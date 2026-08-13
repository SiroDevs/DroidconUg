import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import '../app_util.dart';

class AppConstants {
  AppConstants._();
  static String dbName = 'DroidconUg.db';
  static const String bookmarksTable = 'bookmarks';
  static const String linksTable = 'links';
  static const String roomsTable = 'rooms';
  static const String speakersTable = 'speakers';
  static const String sessionsTable = 'sessions';
  static const String sessionizesTable = 'sessionizes';
  static const String sessionTableViews = 'session_views';

  static const String sessionsExtSql = '''
SELECT 
  tbl1.sessionId,
  tbl1.speakerId,
  tbl3.roomId,
  tbl4.name AS venue,
  tbl2.firstName,
  tbl2.lastName,
  tbl2.fullName,
  tbl2.avatar,
  tbl3.title,
  tbl3.startsAt,
  tbl3.endsAt,
  tbl3.bookmarked 
FROM sessionizes AS tbl1
LEFT JOIN speakers AS tbl2 ON tbl1.speakerId = tbl2.id
LEFT JOIN sessions AS tbl3 ON tbl1.sessionId = tbl3.id
LEFT JOIN rooms AS tbl4 ON tbl3.roomId = tbl4.id 
ORDER BY tbl1.id ASC;
''';

  static const appTitle = "DroidconUg";
  static const appTitle1 = "droidcon uganda";
  static const appCredits = "© Siro Devs";
  static const kFontFamily = 'TrebuchetMS';

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
