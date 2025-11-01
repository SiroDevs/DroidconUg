import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/utils/app_util.dart';
import '../../../domain/entity/models.dart';
import '../../../domain/repository/database_repository.dart';
import '../../../core/di/injectable.dart';

part 'speakers_event.dart';
part 'speakers_state.dart';

part 'speakers_bloc.freezed.dart';

class SpeakersBloc extends Bloc<SpeakersEvent, SpeakersState> {
  SpeakersBloc() : super(const _SpeakersState()) {
    on<FetchData>(_onFetchData);
    on<BookmarkSpeaker>(_onBookmarkSpeaker);
  }

  final _dbRepo = getIt<DatabaseRepository>();

  void _onFetchData(FetchData event, Emitter<SpeakersState> emit) async {
    emit(const ProgressState());

    try {
      final speaker = await _dbRepo.fetchSpeakerById(event.speaker);
      final sessions = await _dbRepo.fetchSessionsBySpeaker(event.speaker);
      final allSessions = await _dbRepo.fetchSessions();
      final links = await _dbRepo.fetchLinks(event.speaker);
      if (speaker != null && sessions.isNotEmpty) {
        emit(DataFetched(speaker, sessions, allSessions, links));
      } else {
        emit(const FailureState("No data available"));
      }
    } catch (e) {
      logger("Error log: $e");
      emit(const FailureState("No data available"));
    }
  }

  void _onBookmarkSpeaker(
    BookmarkSpeaker event,
    Emitter<SpeakersState> emit,
  ) async {
    // emit(const ProgressState());
    // try {
    //   await _dbRepo.bookmarkSession(
    //     event.session.id!,
    //     !event.session.bookmarked!,
    //     getIso8601Date(),
    //   );
    //   await _dbRepo.saveBookmark(
    //     Bookmark(session: event.session.id!, createdAt: getIso8601Date()),
    //   );
    // } catch (e) {
    //   logger('Unable to bookmark session: $e');
    // }

    // emit(Bookmarked(!event.speaker.bookmarked!));
  }
}
