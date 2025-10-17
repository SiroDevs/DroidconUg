// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// FroomGenerator
// **************************************************************************

abstract class $AppDatabaseBuilderContract {
  /// Adds migrations to the builder.
  $AppDatabaseBuilderContract addMigrations(List<Migration> migrations);

  /// Adds a database [Callback] to the builder.
  $AppDatabaseBuilderContract addCallback(Callback callback);

  /// Creates the database and initializes it.
  Future<AppDatabase> build();
}

// ignore: avoid_classes_with_only_static_members
class $FroomAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static $AppDatabaseBuilderContract databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static $AppDatabaseBuilderContract inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder implements $AppDatabaseBuilderContract {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  @override
  $AppDatabaseBuilderContract addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  @override
  $AppDatabaseBuilderContract addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  @override
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(path, _migrations, _callback);
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  BookmarksDao? _bookmarksDaoInstance;

  LinksDao? _linksDaoInstance;

  RoomsDao? _roomsDaoInstance;

  SessionsDao? _sessionsDaoInstance;

  SpeakersDao? _speakersDaoInstance;

  SessionizesDao? _sessionizesDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 2,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
          database,
          startVersion,
          endVersion,
          migrations,
        );

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
          'CREATE TABLE IF NOT EXISTS `bookmarks` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `session` TEXT, `createdAt` TEXT)',
        );
        await database.execute(
          'CREATE TABLE IF NOT EXISTS `links` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `speakerId` TEXT, `title` TEXT, `url` TEXT)',
        );
        await database.execute(
          'CREATE TABLE IF NOT EXISTS `rooms` (`id` INTEGER, `name` TEXT, `sort` INTEGER, PRIMARY KEY (`id`))',
        );
        await database.execute(
          'CREATE TABLE IF NOT EXISTS `sessions` (`id` TEXT, `title` TEXT, `description` TEXT, `startsAt` TEXT, `endsAt` TEXT, `liveUrl` TEXT, `recordingUrl` TEXT, `roomId` INTEGER, `bookmarked` INTEGER, PRIMARY KEY (`id`))',
        );
        await database.execute(
          'CREATE TABLE IF NOT EXISTS `speakers` (`id` TEXT, `firstName` TEXT, `lastName` TEXT, `fullName` TEXT, `bio` TEXT, `tagLine` TEXT, `avatar` TEXT, PRIMARY KEY (`id`))',
        );
        await database.execute(
          'CREATE TABLE IF NOT EXISTS `sessionizes` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `sessionId` TEXT, `speakerId` TEXT)',
        );

        await database.execute(
          'CREATE VIEW IF NOT EXISTS `session_views` AS SELECT \n  tbl1.sessionId,\n  tbl1.speakerId,\n  tbl3.roomId,\n  tbl4.name AS venue,\n  tbl2.firstName,\n  tbl2.lastName,\n  tbl2.fullName,\n  tbl2.avatar,\n  tbl3.title,\n  tbl3.startsAt,\n  tbl3.endsAt,\n  tbl3.bookmarked \nFROM sessionizes AS tbl1\nLEFT JOIN speakers AS tbl2 ON tbl1.speakerId = tbl2.id\nLEFT JOIN sessions AS tbl3 ON tbl1.sessionId = tbl3.id\nLEFT JOIN rooms AS tbl4 ON tbl3.roomId = tbl4.id \nORDER BY tbl1.id ASC;\n;',
        );

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  BookmarksDao get bookmarksDao {
    return _bookmarksDaoInstance ??= _$BookmarksDao(database, changeListener);
  }

  @override
  LinksDao get linksDao {
    return _linksDaoInstance ??= _$LinksDao(database, changeListener);
  }

  @override
  RoomsDao get roomsDao {
    return _roomsDaoInstance ??= _$RoomsDao(database, changeListener);
  }

  @override
  SessionsDao get sessionsDao {
    return _sessionsDaoInstance ??= _$SessionsDao(database, changeListener);
  }

  @override
  SpeakersDao get speakersDao {
    return _speakersDaoInstance ??= _$SpeakersDao(database, changeListener);
  }

  @override
  SessionizesDao get sessionizesDao {
    return _sessionizesDaoInstance ??= _$SessionizesDao(
      database,
      changeListener,
    );
  }
}

class _$BookmarksDao extends BookmarksDao {
  _$BookmarksDao(this.database, this.changeListener)
    : _queryAdapter = QueryAdapter(database),
      _bookmarkInsertionAdapter = InsertionAdapter(
        database,
        'bookmarks',
        (Bookmark item) => <String, Object?>{
          'id': item.id,
          'session': item.session,
          'createdAt': item.createdAt,
        },
      ),
      _bookmarkDeletionAdapter = DeletionAdapter(
        database,
        'bookmarks',
        ['id'],
        (Bookmark item) => <String, Object?>{
          'id': item.id,
          'session': item.session,
          'createdAt': item.createdAt,
        },
      );

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Bookmark> _bookmarkInsertionAdapter;

  final DeletionAdapter<Bookmark> _bookmarkDeletionAdapter;

  @override
  Future<Bookmark?> findBookmarkById(int id) async {
    return _queryAdapter.query(
      'SELECT * FROM bookmarks WHERE id = ?1',
      mapper: (Map<String, Object?> row) => Bookmark(
        id: row['id'] as int?,
        session: row['session'] as String?,
        createdAt: row['createdAt'] as String?,
      ),
      arguments: [id],
    );
  }

  @override
  Future<List<Bookmark>> fetchBookmarks() async {
    return _queryAdapter.queryList(
      'SELECT * FROM bookmarks',
      mapper: (Map<String, Object?> row) => Bookmark(
        id: row['id'] as int?,
        session: row['session'] as String?,
        createdAt: row['createdAt'] as String?,
      ),
    );
  }

  @override
  Future<void> deleteAllBookmarks() async {
    await _queryAdapter.queryNoReturn('DELETE FROM bookmarks');
  }

  @override
  Future<void> insertBookmark(Bookmark bookmark) async {
    await _bookmarkInsertionAdapter.insert(
      bookmark,
      OnConflictStrategy.replace,
    );
  }

  @override
  Future<void> deleteBookmark(Bookmark bookmark) async {
    await _bookmarkDeletionAdapter.delete(bookmark);
  }
}

class _$LinksDao extends LinksDao {
  _$LinksDao(this.database, this.changeListener)
    : _queryAdapter = QueryAdapter(database),
      _linkInsertionAdapter = InsertionAdapter(
        database,
        'links',
        (Link item) => <String, Object?>{
          'id': item.id,
          'speakerId': item.speakerId,
          'title': item.title,
          'url': item.url,
        },
      );

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Link> _linkInsertionAdapter;

  @override
  Future<Link?> findLinkById(int id) async {
    return _queryAdapter.query(
      'SELECT * FROM links WHERE id = ?1',
      mapper: (Map<String, Object?> row) => Link(
        id: row['id'] as int?,
        speakerId: row['speakerId'] as String?,
        title: row['title'] as String?,
        url: row['url'] as String?,
      ),
      arguments: [id],
    );
  }

  @override
  Future<List<Link>> fetchLinks() async {
    return _queryAdapter.queryList(
      'SELECT * FROM links',
      mapper: (Map<String, Object?> row) => Link(
        id: row['id'] as int?,
        speakerId: row['speakerId'] as String?,
        title: row['title'] as String?,
        url: row['url'] as String?,
      ),
    );
  }

  @override
  Future<void> deleteAllLinks() async {
    await _queryAdapter.queryNoReturn('DELETE FROM links');
  }

  @override
  Future<void> insertLink(Link link) async {
    await _linkInsertionAdapter.insert(link, OnConflictStrategy.replace);
  }
}

class _$RoomsDao extends RoomsDao {
  _$RoomsDao(this.database, this.changeListener)
    : _queryAdapter = QueryAdapter(database),
      _roomInsertionAdapter = InsertionAdapter(
        database,
        'rooms',
        (Room item) => <String, Object?>{
          'id': item.id,
          'name': item.name,
          'sort': item.sort,
        },
      );

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Room> _roomInsertionAdapter;

  @override
  Future<Room?> findRoomById(int id) async {
    return _queryAdapter.query(
      'SELECT * FROM rooms WHERE id = ?1',
      mapper: (Map<String, Object?> row) => Room(
        id: row['id'] as int?,
        name: row['name'] as String?,
        sort: row['sort'] as int?,
      ),
      arguments: [id],
    );
  }

  @override
  Future<List<Room>> fetchRooms() async {
    return _queryAdapter.queryList(
      'SELECT * FROM rooms',
      mapper: (Map<String, Object?> row) => Room(
        id: row['id'] as int?,
        name: row['name'] as String?,
        sort: row['sort'] as int?,
      ),
    );
  }

  @override
  Future<void> deleteAllRooms() async {
    await _queryAdapter.queryNoReturn('DELETE FROM rooms');
  }

  @override
  Future<void> insertRoom(Room room) async {
    await _roomInsertionAdapter.insert(room, OnConflictStrategy.replace);
  }
}

class _$SessionsDao extends SessionsDao {
  _$SessionsDao(this.database, this.changeListener)
    : _queryAdapter = QueryAdapter(database),
      _sessionInsertionAdapter = InsertionAdapter(
        database,
        'sessions',
        (Session item) => <String, Object?>{
          'id': item.id,
          'title': item.title,
          'description': item.description,
          'startsAt': item.startsAt,
          'endsAt': item.endsAt,
          'liveUrl': item.liveUrl,
          'recordingUrl': item.recordingUrl,
          'roomId': item.roomId,
          'bookmarked': item.bookmarked == null
              ? null
              : (item.bookmarked! ? 1 : 0),
        },
      );

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Session> _sessionInsertionAdapter;

  @override
  Future<Session?> findSessionById(int id) async {
    return _queryAdapter.query(
      'SELECT * FROM sessions WHERE id = ?1',
      mapper: (Map<String, Object?> row) => Session(
        id: row['id'] as String?,
        title: row['title'] as String?,
        description: row['description'] as String?,
        startsAt: row['startsAt'] as String?,
        endsAt: row['endsAt'] as String?,
        liveUrl: row['liveUrl'] as String?,
        recordingUrl: row['recordingUrl'] as String?,
        roomId: row['roomId'] as int?,
        bookmarked: row['bookmarked'] == null
            ? null
            : (row['bookmarked'] as int) != 0,
      ),
      arguments: [id],
    );
  }

  @override
  Future<List<SessionExt>> fetchSessions() async {
    return _queryAdapter.queryList(
      'SELECT * FROM session_views',
      mapper: (Map<String, Object?> row) => SessionExt(
        sessionId: row['sessionId'] as String?,
        speakerId: row['speakerId'] as String?,
        roomId: row['roomId'] as int?,
        venue: row['venue'] as String?,
        firstName: row['firstName'] as String?,
        lastName: row['lastName'] as String?,
        fullName: row['fullName'] as String?,
        avatar: row['avatar'] as String?,
        title: row['title'] as String?,
        startsAt: row['startsAt'] as String?,
        endsAt: row['endsAt'] as String?,
        bookmarked: row['bookmarked'] == null
            ? null
            : (row['bookmarked'] as int) != 0,
      ),
    );
  }

  @override
  Future<void> bookmarkSession(String id, bool bookmark, String updated) async {
    await _queryAdapter.queryNoReturn(
      'UPDATE sessions SET bookmark = ?2, updated = ?3 WHERE id = ?1',
      arguments: [id, bookmark ? 1 : 0, updated],
    );
  }

  @override
  Future<void> deleteAllSessions() async {
    await _queryAdapter.queryNoReturn('DELETE FROM sessions');
  }

  @override
  Future<void> insertSession(Session session) async {
    await _sessionInsertionAdapter.insert(session, OnConflictStrategy.replace);
  }
}

class _$SpeakersDao extends SpeakersDao {
  _$SpeakersDao(this.database, this.changeListener)
    : _queryAdapter = QueryAdapter(database),
      _speakerInsertionAdapter = InsertionAdapter(
        database,
        'speakers',
        (Speaker item) => <String, Object?>{
          'id': item.id,
          'firstName': item.firstName,
          'lastName': item.lastName,
          'fullName': item.fullName,
          'bio': item.bio,
          'tagLine': item.tagLine,
          'avatar': item.avatar,
        },
      );

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Speaker> _speakerInsertionAdapter;

  @override
  Future<Speaker?> findSpeakerById(int id) async {
    return _queryAdapter.query(
      'SELECT * FROM speakers WHERE id = ?1',
      mapper: (Map<String, Object?> row) => Speaker(
        id: row['id'] as String?,
        firstName: row['firstName'] as String?,
        lastName: row['lastName'] as String?,
        fullName: row['fullName'] as String?,
        bio: row['bio'] as String?,
        tagLine: row['tagLine'] as String?,
        avatar: row['avatar'] as String?,
      ),
      arguments: [id],
    );
  }

  @override
  Future<List<Speaker>> fetchSpeakers() async {
    return _queryAdapter.queryList(
      'SELECT * FROM speakers',
      mapper: (Map<String, Object?> row) => Speaker(
        id: row['id'] as String?,
        firstName: row['firstName'] as String?,
        lastName: row['lastName'] as String?,
        fullName: row['fullName'] as String?,
        bio: row['bio'] as String?,
        tagLine: row['tagLine'] as String?,
        avatar: row['avatar'] as String?,
      ),
    );
  }

  @override
  Future<void> deleteAllSpeakers() async {
    await _queryAdapter.queryNoReturn('DELETE FROM speakers');
  }

  @override
  Future<void> insertSpeaker(Speaker speaker) async {
    await _speakerInsertionAdapter.insert(speaker, OnConflictStrategy.replace);
  }
}

class _$SessionizesDao extends SessionizesDao {
  _$SessionizesDao(this.database, this.changeListener)
    : _queryAdapter = QueryAdapter(database),
      _sessionizeInsertionAdapter = InsertionAdapter(
        database,
        'sessionizes',
        (Sessionize item) => <String, Object?>{
          'id': item.id,
          'sessionId': item.sessionId,
          'speakerId': item.speakerId,
        },
      );

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Sessionize> _sessionizeInsertionAdapter;

  @override
  Future<Sessionize?> findSessionizeById(int id) async {
    return _queryAdapter.query(
      'SELECT * FROM sessionizes WHERE id = ?1',
      mapper: (Map<String, Object?> row) => Sessionize(
        id: row['id'] as int?,
        sessionId: row['sessionId'] as String?,
        speakerId: row['speakerId'] as String?,
      ),
      arguments: [id],
    );
  }

  @override
  Future<List<Sessionize>> fetchSessionizes() async {
    return _queryAdapter.queryList(
      'SELECT * FROM sessionizes',
      mapper: (Map<String, Object?> row) => Sessionize(
        id: row['id'] as int?,
        sessionId: row['sessionId'] as String?,
        speakerId: row['speakerId'] as String?,
      ),
    );
  }

  @override
  Future<void> deleteAllSessionizes() async {
    await _queryAdapter.queryNoReturn('DELETE FROM sessionizes');
  }

  @override
  Future<void> insertSessionize(Sessionize sessionizes) async {
    await _sessionizeInsertionAdapter.insert(
      sessionizes,
      OnConflictStrategy.replace,
    );
  }
}
