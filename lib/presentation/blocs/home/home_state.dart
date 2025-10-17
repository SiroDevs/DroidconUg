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
