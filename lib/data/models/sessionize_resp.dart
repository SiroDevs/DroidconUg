import 'package:json_annotation/json_annotation.dart';

import 'models.dart';

part 'sessionize_resp.g.dart';

@JsonSerializable()
class SessionizeResp {
  final List<SessionResp>? sessions;
  final List<SpeakerResp>? speakers;
  final List<RoomResp>? rooms;

  SessionizeResp({
    this.sessions,
    this.speakers,
    this.rooms,
  });

  factory SessionizeResp.fromJson(Map<String, dynamic> json) =>
      _$SessionizeRespFromJson(json);

  Map<String, dynamic> toJson() => _$SessionizeRespToJson(this);
}
