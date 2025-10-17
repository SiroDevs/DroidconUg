import 'package:json_annotation/json_annotation.dart';

part 'room_resp.g.dart';

@JsonSerializable()
class RoomResp {
  int? id;
  String? name;
  int? sort;

  RoomResp({
    this.id,
    this.name,
    this.sort,
  });

  factory RoomResp.fromJson(Map<String, dynamic> json) => _$RoomRespFromJson(json);

  Map<String, dynamic> toJson() => _$RoomRespToJson(this);
}
