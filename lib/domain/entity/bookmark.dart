import 'package:froom/froom.dart';

import '../../common/utils/constants/app_constants.dart';

@Entity(tableName: AppConstants.bookmarksTable)
class Bookmark {
  @PrimaryKey(autoGenerate: true)
  int? id;
  String? session;
  String? createdAt;

  Bookmark({this.id, this.session, this.createdAt});
}
