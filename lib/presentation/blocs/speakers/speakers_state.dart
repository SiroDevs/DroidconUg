part of 'speakers_bloc.dart';

@freezed
class SpeakersState with _$SpeakersState {
  const factory SpeakersState.initial() = _SpeakersState;

  const factory SpeakersState.loaded() = LoadedState;

  const factory SpeakersState.progress() = ProgressState;

  const factory SpeakersState.success() = SuccessState;

  const factory SpeakersState.speakerFetched(Droidcon droidcon) = SpeakerFetched;


  const factory SpeakersState.bookmarked(bool bookmarked) = Bookmarked;

  const factory SpeakersState.noInternet() = NoInternetState;
  
  const factory SpeakersState.failure(String feedback) = FailureState;
}
