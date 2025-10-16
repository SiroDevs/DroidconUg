import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import '../utils/app_util.dart';

class AppConstants {
  AppConstants._();
  static String dbName = 'DroidconUg.db';
  static const String bookmarksTable = 'bookmarks';
  static const String roomsTable = 'rooms';
  static const String speakersTable = 'speakers';
  static const String sessionsTable = 'sessions';
  static const String sessionsTableViews = 'viewsessions';

  static const String sessionsExtSql =
      'SELECT tbl1.id, tbl1.title, tbl1.description, tbl1.startsAt, tbl1.endsAt, '
      'tbl1.speakers, tbl1.categories, tbl1.room, tbl1.bookmarked, tbl2.name'
      'FROM sessions AS tbl1 '
      'LEFT JOIN speakers AS tbl2 '
      'ON tbl1.room=tbl2.id '
      'ORDER BY tbl1.id ASC';

  static const appTitle = "DroidconUg";
  static const appTitle1 = "droidcon uganda";
  static const appCredits = "© Siro Devs";

  static Future<String> get databaseFile async {
    Directory dbFolder = await getApplicationDocumentsDirectory();
    if (isDesktop) {
      dbFolder = await getApplicationSupportDirectory();
    }

    var dbPath = join(dbFolder.path, AppConstants.dbName);
    logger('Opening database from: $dbPath');
    return dbPath;
  }
}
