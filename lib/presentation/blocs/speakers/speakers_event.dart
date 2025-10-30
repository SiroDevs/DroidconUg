part of 'speakers_bloc.dart';

@freezed
sealed class SpeakersEvent with _$SpeakersEvent {
  const factory SpeakersEvent.fetch(String speaker) = FetchData;

  const factory SpeakersEvent.bookmark(Speaker speaker) = BookmarkSpeaker;
}
