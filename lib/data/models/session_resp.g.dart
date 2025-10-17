// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SessionResp _$SessionRespFromJson(Map<String, dynamic> json) => SessionResp(
  id: json['id'] as String?,
  title: json['title'] as String?,
  description: json['description'] as String?,
  startsAt: json['startsAt'] as String?,
  endsAt: json['endsAt'] as String?,
  speakers: (json['speakers'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  liveUrl: json['liveUrl'] as String?,
  recordingUrl: json['recordingUrl'] as String?,
  roomId: (json['roomId'] as num?)?.toInt(),
);

Map<String, dynamic> _$SessionRespToJson(SessionResp instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'startsAt': instance.startsAt,
      'endsAt': instance.endsAt,
      'speakers': instance.speakers,
      'liveUrl': instance.liveUrl,
      'recordingUrl': instance.recordingUrl,
      'roomId': instance.roomId,
    };
