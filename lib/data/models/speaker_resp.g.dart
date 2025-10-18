// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'speaker_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpeakerResp _$SpeakerRespFromJson(Map<String, dynamic> json) => SpeakerResp(
  id: json['id'] as String?,
  firstName: json['firstName'] as String?,
  lastName: json['lastName'] as String?,
  fullName: json['fullName'] as String?,
  bio: json['bio'] as String?,
  tagLine: json['tagLine'] as String?,
  profilePicture: json['profilePicture'] as String?,
  links: (json['links'] as List<dynamic>?)
      ?.map((e) => LinkResp.fromJson(e as Map<String, dynamic>))
      .toList(),
  sessions: (json['sessions'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
);

Map<String, dynamic> _$SpeakerRespToJson(SpeakerResp instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'fullName': instance.fullName,
      'bio': instance.bio,
      'tagLine': instance.tagLine,
      'profilePicture': instance.profilePicture,
      'links': instance.links,
      'sessions': instance.sessions,
    };
