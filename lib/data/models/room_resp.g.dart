// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoomResp _$RoomRespFromJson(Map<String, dynamic> json) => RoomResp(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  sort: (json['sort'] as num?)?.toInt(),
);

Map<String, dynamic> _$RoomRespToJson(RoomResp instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'sort': instance.sort,
};
