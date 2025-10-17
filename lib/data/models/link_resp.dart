import 'package:json_annotation/json_annotation.dart';

part 'link_resp.g.dart';

@JsonSerializable()
class LinkResp {
  String? title;
  String? url;
  LinkType? linkType;

  LinkResp({
    this.title,
    this.url,
    this.linkType,
  });

  factory LinkResp.fromJson(Map<String, dynamic> json) => _$LinkRespFromJson(json);

  Map<String, dynamic> toJson() => _$LinkRespToJson(this);
}

enum LinkType {
  @JsonValue('LinkedIn')
  linkedIn,
  @JsonValue('Twitter')
  twitter
}
