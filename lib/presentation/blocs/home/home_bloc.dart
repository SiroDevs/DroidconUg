import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/utils/network_utils.dart';
import '../../../data/models/models.dart';
import '../../../core/utils/app_util.dart';
import '../../../domain/repository/database_repository.dart';
import '../../../core/di/injectable.dart';
import '../../../domain/repository/home_repository.dart';

part 'home_event.dart';
part 'home_state.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const _HomeState()) {
    on<FetchData>(_onFetchData);
  }

  final _homeRepo = HomeRepository();
  final _dbRepo = getIt<DatabaseRepository>();

  void _onFetchData(FetchData event, Emitter<HomeState> emit) async {
    emit(const ProgressState());

    final hasInternet = await NetworkUtil.hasInternetConnection();

    try {
      final localData = await _fetchLocalData();

      if (hasInternet) {
        try {
          final resp = await _homeRepo.getSessions();
          if (resp.statusCode == 200) {
            if (localData.hasData) {
              emit(
                DataFetched(
                  localData.bookmarks,
                  localData.rooms,
                  localData.speakers,
                  localData.sessions,
                ),
              );
            } else {
              emit(const FailureState("No data available"));
            }
          } else {
            if (localData.hasData) {
              emit(
                DataFetched(
                  localData.bookmarks,
                  localData.rooms,
                  localData.speakers,
                  localData.sessions,
                ),
              );
            } else {
              emit(FailureState("Failed to fetch data: ${resp.statusCode}"));
            }
          }
        } catch (e) {
          if (localData.hasData) {
            emit(
              DataFetched(
                localData.bookmarks,
                localData.rooms,
                localData.speakers,
                localData.sessions,
              ),
            );
          } else {
            emit(FailureState(e.toString()));
          }
        }
      } else {
        if (localData.hasData) {
          emit(
            DataFetched(
              localData.bookmarks,
              localData.rooms,
              localData.speakers,
              localData.sessions,
            ),
          );
        } else {
          emit(const NoInternetState());
        }
      }
    } catch (e) {
      logger("Fetch error: $e");
      if (!hasInternet) {
        emit(const NoInternetState());
      } else {
        emit(FailureState(e.toString()));
      }
    }
  }

  Future<
    ({
      List<Bookmark> bookmarks,
      List<Room> rooms,
      List<Speaker> speakers,
      List<Session> sessions,
      bool hasData,
    })?
  >
  _fetchLocalData() async {
    try {
      final bookmarks = await _dbRepo.fetchBookmarks();
      final rooms = await _dbRepo.fetchRooms();
      final sessions = await _dbRepo.fetchSessions();
      final speakers = await _dbRepo.fetchSpeakers();

      final hasData =
          rooms.isNotEmpty || speakers.isNotEmpty || sessions.isNotEmpty;

      return (
        bookmarks: bookmarks,
        rooms: rooms,
        speakers: speakers,
        sessions: sessions,
        hasData: hasData,
      );
    } catch (e) {
      return (
        bookmarks: [],
        rooms: [],
        speakers: [],
        sessions: [],
        hasData: false,
      );
    }
  }
}
