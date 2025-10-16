import 'dart:async';

import 'package:froom/froom.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import '../../models/models.dart';
import 'dao/bookmarks_dao.dart';
import 'dao/rooms_dao.dart';
import 'dao/sessions_dao.dart';
import 'dao/speakers_dao.dart';

part 'app_database.g.dart';

@Database(
  version: 1,
  entities: [
    Bookmark,
    Room,
    Session,
    Speaker,
  ],
)
abstract class AppDatabase extends FroomDatabase {
  BookmarksDao get bookmarksDao;
  RoomsDao get roomsDao;
  SessionsDao get sessionsDao;
  SpeakersDao get speakersDao;
}

Future<AppDatabase> buildInMemoryDatabase() {
  return $FroomAppDatabase
      .inMemoryDatabaseBuilder()
      .build();
}
