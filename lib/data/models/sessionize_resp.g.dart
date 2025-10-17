// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sessionize_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SessionizeResp _$SessionizeRespFromJson(Map<String, dynamic> json) =>
    SessionizeResp(
      sessions: (json['sessions'] as List<dynamic>?)
          ?.map((e) => SessionResp.fromJson(e as Map<String, dynamic>))
          .toList(),
      speakers: (json['speakers'] as List<dynamic>?)
          ?.map((e) => SpeakerResp.fromJson(e as Map<String, dynamic>))
          .toList(),
      rooms: (json['rooms'] as List<dynamic>?)
          ?.map((e) => RoomResp.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SessionizeRespToJson(SessionizeResp instance) =>
    <String, dynamic>{
      'sessions': instance.sessions,
      'speakers': instance.speakers,
      'rooms': instance.rooms,
    };
