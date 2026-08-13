import 'package:froom/froom.dart';

import '../../common/utils/constants/app_constants.dart';

@Entity(tableName: AppConstants.sessionizesTable)
class Sessionize {
  @PrimaryKey(autoGenerate: true)
  int? id;
  String? sessionId;
  String? speakerId;

  Sessionize({this.id, this.sessionId, this.speakerId});
}
