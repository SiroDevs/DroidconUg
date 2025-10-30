import 'package:froom/froom.dart';

import '../../core/constants/app_constants.dart';

@Entity(tableName: AppConstants.roomsTable)
class Room {
  @PrimaryKey()
  int? id;
  String? name;
  int? sort;

  Room({this.id, this.name, this.sort});
}
