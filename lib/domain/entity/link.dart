import 'package:froom/froom.dart';

import '../../core/constants/app_constants.dart';

@Entity(tableName: AppConstants.linksTable)
class Link {
  @PrimaryKey(autoGenerate: true)
  int? id;
  String? speakerId;
  String? title;
  String? url;

  Link({
    this.id,
    this.speakerId,
    this.title,
    this.url,
  });
}
