import 'dart:async';

import 'package:froom/froom.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import '../../../domain/entity/models.dart';
import 'dao/bookmarks_dao.dart';
import 'dao/links_dao.dart';
import 'dao/rooms_dao.dart';
import 'dao/sessionize_dao.dart';
import 'dao/sessions_dao.dart';
import 'dao/speakers_dao.dart';

part 'app_database.g.dart';

@Database(
  version: 2,
  entities: [
    Bookmark,
    Link,
    Room,
    Session,
    Speaker,
    Sessionize,
  ],
  views: [SessionExt],
)
abstract class AppDatabase extends FroomDatabase {
  BookmarksDao get bookmarksDao;
  LinksDao get linksDao;
  RoomsDao get roomsDao;
  SessionsDao get sessionsDao;
  SpeakersDao get speakersDao;
  SessionizesDao get sessionizesDao;
}

Future<AppDatabase> buildInMemoryDatabase() {
  return $FroomAppDatabase
      .inMemoryDatabaseBuilder()
      .build();
}
