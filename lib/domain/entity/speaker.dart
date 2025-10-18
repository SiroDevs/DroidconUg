import 'package:froom/froom.dart';

import '../../core/constants/app_constants.dart';

@Entity(tableName: AppConstants.speakersTable)
class Speaker {
  @PrimaryKey()
  String? id;
  String? firstName;
  String? lastName;
  String? fullName;
  String? bio;
  String? tagLine;
  String? avatar;

  Speaker({
    this.id,
    this.firstName,
    this.lastName,
    this.fullName,
    this.bio,
    this.tagLine,
    this.avatar,
  });
}
