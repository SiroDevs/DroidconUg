import 'package:froom/froom.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../models/speaker.dart';

@dao
abstract class SpeakersDao {
  @Query('SELECT * FROM ${AppConstants.speakersTable} WHERE id = :id')
  Future<Speaker?> findSpeakerById(int id);

  @Query('SELECT * FROM ${AppConstants.speakersTable}')
  Future<List<Speaker>> fetchSpeakers();

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertSpeaker(Speaker speaker);

  @Query("DELETE FROM ${AppConstants.speakersTable}")
  Future<void> deleteAllSpeakers();
}
