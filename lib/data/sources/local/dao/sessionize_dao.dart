import 'package:froom/froom.dart';

import '../../../../common/utils/constants/app_constants.dart';
import '../../../../domain/entity/sessionize.dart';

@dao
abstract class SessionizesDao {
  @Query('SELECT * FROM ${AppConstants.sessionizesTable} WHERE id = :id')
  Future<Sessionize?> findSessionizeById(int id);

  @Query('SELECT * FROM ${AppConstants.sessionizesTable}')
  Future<List<Sessionize>> fetchSessionizes();

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertSessionize(Sessionize sessionizes);

  @Query("DELETE FROM ${AppConstants.sessionizesTable}")
  Future<void> deleteAllSessionizes();
}
