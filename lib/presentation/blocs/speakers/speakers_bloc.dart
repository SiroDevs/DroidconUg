import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/utils/app_util.dart';
import '../../../domain/entity/droidcon.dart';
import '../../../domain/entity/models.dart';
import '../../../domain/repository/database_repository.dart';
import '../../../core/utils/date_util.dart';
import '../../../core/di/injectable.dart';
import '../../../domain/repository/home_repository.dart';

part 'speakers_event.dart';
part 'speakers_state.dart';

part 'speakers_bloc.freezed.dart';

class SpeakersBloc extends Bloc<SpeakersEvent, SpeakersState> {
  SpeakersBloc() : super(const _SpeakersState()) {
    on<FetchData>(_onFetchData);
    on<BookmarkSession>(_onBookmarkSession);
  }

  final _homeRepo = HomeRepository();
  final _dbRepo = getIt<DatabaseRepository>();

  void _onFetchData(FetchData event, Emitter<SpeakersState> emit) async {
    emit(const ProgressState());

    try {
      final droidcon = await _homeRepo.fetchLocalData();
      if (droidcon.hasData) {
        emit(SpeakerFetched(droidcon));
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
    Emitter<SpeakersState> emit,
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
