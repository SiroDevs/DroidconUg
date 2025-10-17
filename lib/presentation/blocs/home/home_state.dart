part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _HomeState;

  const factory HomeState.loaded() = LoadedState;

  const factory HomeState.progress() = ProgressState;

  const factory HomeState.success() = HomeSuccess;

  const factory HomeState.fetched(Droidcon droidcon) = DataFetched;

  const factory HomeState.bookmarked(bool bookmarked) = SessionBookmarked;

  const factory HomeState.noInternet() = NoInternetState;
  const factory HomeState.failure(String feedback) = FailureState;
}

class Droidcon {
  final List<Bookmark> bookmarks;
  final List<Room> rooms;
  final List<Speaker> speakers;
  final List<Session> sessions;
  final bool hasData;

  Droidcon({
    required this.bookmarks,
    required this.rooms,
    required this.speakers,
    required this.sessions,
    required this.hasData,
  });
}
