part of 'sessions_bloc.dart';

@freezed
class SessionsState with _$SessionsState {
  const factory SessionsState.initial() = _SessionsState;

  const factory SessionsState.loaded() = LoadedState;

  const factory SessionsState.progress() = ProgressState;

  const factory SessionsState.success() = SuccessState;

  const factory SessionsState.fetched(Speaker speaker) = SpeakerFetched;

  const factory SessionsState.bookmarked(bool bookmarked) = Bookmarked;

  const factory SessionsState.noInternet() = NoInternetState;
  
  const factory SessionsState.failure(String feedback) = FailureState;
}
