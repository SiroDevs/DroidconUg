import 'package:json_annotation/json_annotation.dart';

import 'link_resp.dart';

part 'speaker_resp.g.dart';

@JsonSerializable()
class SpeakerResp {
  String? id;
  String? firstName;
  String? lastName;
  String? fullName;
  String? bio;
  String? tagLine;
  String? profilePicture;
  List<LinkResp>? links;
  List<int>? sessions;

  SpeakerResp({
    this.id,
    this.firstName,
    this.lastName,
    this.fullName,
    this.bio,
    this.tagLine,
    this.profilePicture,
    this.links,
    this.sessions,
  });

  factory SpeakerResp.fromJson(Map<String, dynamic> json) =>
      _$SpeakerRespFromJson(json);

  Map<String, dynamic> toJson() => _$SpeakerRespToJson(this);
}
