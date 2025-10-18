import 'package:froom/froom.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../domain/entity/session.dart';
import '../../../../domain/entity/session_ext.dart';

@dao
abstract class SessionsDao {
  @Query('SELECT * FROM ${AppConstants.sessionsTable} WHERE id = :id')
  Future<Session?> findSessionById(String id);

  @Query('SELECT * FROM ${AppConstants.sessionTableViews} WHERE speakerId = :speaker')
  Future<List<SessionExt>> fetchSessionsBySpeaker(String speaker);

  @Query('SELECT * FROM ${AppConstants.sessionTableViews}')
  Future<List<SessionExt>> fetchSessions();

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertSession(Session session);

  @Query(
    'UPDATE ${AppConstants.sessionsTable} '
    'SET bookmark = :bookmark, updated = :updated WHERE id = :id',
  )
  Future<void> bookmarkSession(
    String id,
    bool bookmark,
    String updated,
  );

  @Query("DELETE FROM ${AppConstants.sessionsTable}")
  Future<void> deleteAllSessions();
}
