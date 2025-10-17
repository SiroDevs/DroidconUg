import 'package:json_annotation/json_annotation.dart';

part 'session_resp.g.dart';

@JsonSerializable()
class SessionResp {
  String? id;
  String? title;
  String? description;
  String? startsAt;
  String? endsAt;
  List<String>? speakers;
  String? liveUrl;
  String? recordingUrl;
  int? roomId;

  SessionResp({
    this.id,
    this.title,
    this.description,
    this.startsAt,
    this.endsAt,
    this.speakers,
    this.liveUrl,
    this.recordingUrl,
    this.roomId,
  });

  factory SessionResp.fromJson(Map<String, dynamic> json) =>
      _$SessionRespFromJson(json);

  Map<String, dynamic> toJson() => _$SessionRespToJson(this);
}
