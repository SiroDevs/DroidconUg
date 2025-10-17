import '../../data/sources/local/app_database.dart';
import '../entity/models.dart';
import 'database_repository.dart';

/// Implementor of Database Repository
class DatabaseRepositoryImpl implements DatabaseRepository {
  final AppDatabase _appDB;

  DatabaseRepositoryImpl(this._appDB);

  @override
  Future<List<Bookmark>> fetchBookmarks() async {
    return _appDB.bookmarksDao.fetchBookmarks();
  }

  @override
  Future<void> saveBookmark(Bookmark bookmark) async {
    return _appDB.bookmarksDao.insertBookmark(bookmark);
  }

  @override
  Future<void> deleteBookmark(Bookmark bookmark) async {
    return _appDB.bookmarksDao.deleteBookmark(bookmark);
  }

  @override
  Future<void> removeAllBookmarks() async {
    return _appDB.bookmarksDao.deleteAllBookmarks();
  }

  @override
  Future<List<Room>> fetchRooms() async {
    return _appDB.roomsDao.fetchRooms();
  }

  @override
  Future<void> saveRoom(Room room) async {
    return _appDB.roomsDao.insertRoom(room);
  }

  @override
  Future<void> removeAllRooms() async {
    return _appDB.roomsDao.deleteAllRooms();
  }

  @override
  Future<List<Link>> fetchLinks() async {
    return _appDB.linksDao.fetchLinks();
  }

  @override
  Future<void> saveLink(Link link) async {
    return _appDB.linksDao.insertLink(link);
  }

  @override
  Future<void> removeAllLinks() async {
    return _appDB.linksDao.deleteAllLinks();
  }

  @override
  Future<List<Speaker>> fetchSpeakers() async {
    return _appDB.speakersDao.fetchSpeakers();
  }

  @override
  Future<void> saveSpeaker(Speaker speaker) async {
    return _appDB.speakersDao.insertSpeaker(speaker);
  }

  @override
  Future<void> removeAllSpeakers() async {
    return _appDB.speakersDao.deleteAllSpeakers();
  }

  @override
  Future<List<SessionExt>> fetchSessions() async {
    return _appDB.sessionsDao.fetchSessions();
  }

  @override
  Future<void> saveSession(Session session) async {
    return _appDB.sessionsDao.insertSession(session);
  }

  @override
  Future<void> bookmarkSession(String id, bool bookmark, String updated) async {
    return _appDB.sessionsDao.bookmarkSession(id, bookmark, updated);
  }

  @override
  Future<void> removeAllSessions() async {
    return _appDB.sessionsDao.deleteAllSessions();
  }

  @override
  Future<void> saveSessionize(Sessionize sessionizes) async {
    return _appDB.sessionizesDao.insertSessionize(sessionizes);
  }

  @override
  Future<void> removeAllSessionizes() async {
    return _appDB.sessionizesDao.deleteAllSessionizes();
  }
}
