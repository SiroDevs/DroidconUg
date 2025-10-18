import 'package:froom/froom.dart';

import '../../core/constants/app_constants.dart';

@Entity(tableName: AppConstants.sessionsTable)
class Session {
  @PrimaryKey()
  String? id;
  String? title;
  String? description;
  String? startsAt;
  String? endsAt;
  String? liveUrl;
  String? recordingUrl;
  int? roomId;
  bool? bookmarked;

  Session({
    this.id,
    this.title,
    this.description,
    this.startsAt,
    this.endsAt,
    this.liveUrl,
    this.recordingUrl,
    this.roomId,
    this.bookmarked,
  });
}
