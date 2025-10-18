import 'package:froom/froom.dart';

import '../../core/constants/app_constants.dart';

@DatabaseView(
  '${AppConstants.sessionsExtSql};',
  viewName: AppConstants.sessionTableViews,
)
class SessionExt {
  @PrimaryKey()
  String? sessionId;
  String? speakerId;
  int? roomId;
  String? venue;
  String? firstName;
  String? lastName;
  String? fullName;
  String? avatar;
  String? title;
  String? startsAt;
  String? endsAt;
  bool? bookmarked;

  SessionExt({
    this.sessionId,
    this.speakerId,
    this.roomId,
    this.venue,
    this.firstName,
    this.lastName,
    this.fullName,
    this.avatar,
    this.title,
    this.startsAt,
    this.endsAt,
    this.bookmarked,
  });
}
