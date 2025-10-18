import '../entity/models.dart';

abstract class DatabaseRepository {
  Future<List<Bookmark>> fetchBookmarks();

  Future<void> saveBookmark(Bookmark bookmark);

  Future<void> deleteBookmark(Bookmark bookmark);

  Future<void> removeAllBookmarks();

  Future<List<Link>> fetchLinks();

  Future<void> saveLink(Link link);

  Future<void> removeAllLinks();

  Future<List<Room>> fetchRooms();

  Future<void> saveRoom(Room room);

  Future<void> removeAllRooms();

  Future<List<SessionExt>> fetchSessions();

  Future<void> saveSession(Session session);

  Future<void> bookmarkSession(String id, bool bookmark, String updated);

  Future<void> removeAllSessions();

  Future<List<Speaker>> fetchSpeakers();

  Future<Speaker?> fetchSpeakerById(String id);

  Future<void> saveSpeaker(Speaker speaker);

  Future<void> removeAllSpeakers();

  Future<void> saveSessionize(Sessionize sessionizes);

  Future<void> removeAllSessionizes();

}
