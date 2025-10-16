import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/models.dart';
import '../../../core/utils/app_util.dart';
import '../../../domain/repository/database_repository.dart';
import '../../../core/utils/date_util.dart';
import '../../../core/di/injectable.dart';

part 'sessions_event.dart';
part 'sessions_state.dart';

part 'sessions_bloc.freezed.dart';

class SessionsBloc extends Bloc<SessionsEvent, SessionsState> {
  SessionsBloc() : super(const _SessionsState()) {
    on<FetchData>(_onFetchData);
    on<BookmarkSession>(_onBookmarkSession);
  }

  final _dbRepo = getIt<DatabaseRepository>();

  void _onFetchData(
    FetchData event,
    Emitter<SessionsState> emit,
  ) async {
    emit(const SessionsProgressState());
    List<Bookmark> bookmarks = [];
    List<Room> rooms = [];
    List<Speaker> speakers = [];
    List<Session> sessions = [];

    try {
      bookmarks = await _dbRepo.fetchBookmarks();
      rooms = await _dbRepo.fetchRooms();
      sessions = await _dbRepo.fetchSessions();
      speakers = await _dbRepo.fetchSpeakers();
      emit(SessionsFetchedState(bookmarks, rooms, speakers, sessions));
    } catch (e) {
      logger("Error log: $e");
      emit(SessionsFetchedState(bookmarks, rooms, speakers, sessions));
    }
  }

  void _onBookmarkSession(
    BookmarkSession event,
    Emitter<SessionsState> emit,
  ) async {
    emit(const SessionsProgressState());
    try {
      await _dbRepo.bookmarkSession(
        event.session.id!,
        !event.session.bookmarked!,
        getIso8601Date(),
      );
      await _dbRepo.saveBookmark(
        Bookmark(
          session: event.session.id!,
          createdAt: getIso8601Date(),
        ),
      );
    } catch (e) {
      logger('Unable to bookmark session: $e');
    }

    emit(SessionsBookmarkedState(!event.session.bookmarked!));
  }
}
