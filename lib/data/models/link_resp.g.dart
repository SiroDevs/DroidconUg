// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'link_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LinkResp _$LinkRespFromJson(Map<String, dynamic> json) => LinkResp(
  title: json['title'] as String?,
  url: json['url'] as String?,
  linkType: $enumDecodeNullable(_$LinkTypeEnumMap, json['linkType']),
);

Map<String, dynamic> _$LinkRespToJson(LinkResp instance) => <String, dynamic>{
  'title': instance.title,
  'url': instance.url,
  'linkType': _$LinkTypeEnumMap[instance.linkType],
};

const _$LinkTypeEnumMap = {
  LinkType.linkedIn: 'LinkedIn',
  LinkType.twitter: 'Twitter',
};
