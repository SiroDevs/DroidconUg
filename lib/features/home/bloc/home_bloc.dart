import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/utils/app_util.dart';
import '../../../common/utils/network_utils.dart';
import '../../../domain/entity/droidcon.dart';
import '../../../domain/repository/home_repository.dart';

part 'home_event.dart';
part 'home_state.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const _HomeState()) {
    on<FetchData>(_onFetchData);
  }

  final _homeRepo = HomeRepository();

  void _onFetchData(FetchData event, Emitter<HomeState> emit) async {
    emit(const ProgressState());

    final hasInternet = await NetworkUtil.hasInternetConnection();

    try {
      if (hasInternet) {
        try {
          final resp = await _homeRepo.getSessions();
          if (resp.statusCode == 200) {
            final droidcon = await _homeRepo.fetchLocalData();
            if (droidcon.hasData) {
              emit(DataFetched(droidcon));
            } else {
              emit(const FailureState("No data available"));
            }
          } else {
            final droidcon = await _homeRepo.fetchLocalData();
            if (droidcon.hasData) {
              emit(DataFetched(droidcon));
            } else {
              logger("No internet connection");
              emit(const NoInternetState());
            }
          }
        } catch (e) {
          logger("Unable to fetch remote data: $e");
          final droidcon = await _homeRepo.fetchLocalData();
          if (droidcon.hasData) {
            emit(DataFetched(droidcon));
          } else {
            logger("Unable to fetch local data: $e");
            emit(FailureState(e.toString()));
          }
        }
      } else {
        final droidcon = await _homeRepo.fetchLocalData();
        if (droidcon.hasData) {
          emit(DataFetched(droidcon));
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
}
