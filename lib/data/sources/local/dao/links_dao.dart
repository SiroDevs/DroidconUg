import 'package:froom/froom.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../domain/entity/link.dart';

@dao
abstract class LinksDao {
  @Query('SELECT * FROM ${AppConstants.linksTable} WHERE id = :id')
  Future<Link?> findLinkById(int id);

  @Query('SELECT * FROM ${AppConstants.linksTable} WHERE speakerId = :speaker')
  Future<List<Link>> fetchLinks(String speaker);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertLink(Link link);

  @Query("DELETE FROM ${AppConstants.linksTable}")
  Future<void> deleteAllLinks();
}
