import 'package:froom/froom.dart';

import '../../core/constants/app_constants.dart';

@Entity(tableName: AppConstants.bookmarksTable)
class Bookmark {
  @PrimaryKey(autoGenerate: true)
  int? id;
  int? session;
  String? createdAt;

  Bookmark({
    this.id,
    this.session,
    this.createdAt,
  });
}

