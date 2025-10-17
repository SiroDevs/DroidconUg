import '../../domain/entity/models.dart';

String? getRoomName(List<Room> rooms, int roomId) {
  try {
    Room room = rooms.firstWhere((room) => room.id == roomId);
    return room.name;
  } catch (e) {
    return '-';
  }
}

List<Session> sortSessions(List<Session> dateSessions) {
  List<Session> sessions = [];

  for (var session in dateSessions) {
    sessions.add(
      Session(
        id: session.id,
        title: session.title,
        description: session.description,
        startsAt: session.startsAt,
        endsAt: session.endsAt,
        bookmarked: session.bookmarked,
        liveUrl: session.liveUrl,
        recordingUrl: session.recordingUrl,
        roomId: session.roomId,
      ),
    );
  }
  // sessions.sort((a, b) => a.categories!.compareTo(b.categories!));
  return sessions;
}
