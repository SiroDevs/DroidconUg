import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/di/injectable.dart';
import '../../../core/utils/app_util.dart';
import '../../../core/utils/date_util.dart';
import '../../../domain/entity/droidcon.dart';
import '../../../domain/entity/models.dart';
import '../../../domain/repository/database_repository.dart';
import '../../../domain/repository/home_repository.dart';

part 'sessions_event.dart';
part 'sessions_state.dart';

part 'sessions_bloc.freezed.dart';

class SessionsBloc extends Bloc<SessionsEvent, SessionsState> {
  SessionsBloc() : super(const _SessionsState()) {
    on<FetchData>(_onFetchData);
    on<BookmarkSession>(_onBookmarkSession);
  }

  final _homeRepo = HomeRepository();
  final _dbRepo = getIt<DatabaseRepository>();

  void _onFetchData(FetchData event, Emitter<SessionsState> emit) async {
    emit(const ProgressState());

    try {
      final droidcon = await _homeRepo.fetchLocalData();
      if (droidcon.hasData) {
        emit(DataFetched(droidcon));
      } else {
        emit(const FailureState("No data available"));
      }
    } catch (e) {
      logger("Error log: $e");
      emit(const FailureState("No data available"));
    }
  }

  void _onBookmarkSession(
    BookmarkSession event,
    Emitter<SessionsState> emit,
  ) async {
    emit(const ProgressState());
    try {
      await _dbRepo.bookmarkSession(
        event.session.id!,
        !event.session.bookmarked!,
        getIso8601Date(),
      );
      await _dbRepo.saveBookmark(
        Bookmark(session: event.session.id!, createdAt: getIso8601Date()),
      );
    } catch (e) {
      logger('Unable to bookmark session: $e');
    }

    emit(Bookmarked(!event.session.bookmarked!));
  }
}
