import 'models.dart';

class Droidcon {
  final List<Bookmark> bookmarks;
  final List<Room> rooms;
  final List<Speaker> speakers;
  final List<SessionExt> sessions;
  final bool hasData;

  Droidcon({
    required this.bookmarks,
    required this.rooms,
    required this.speakers,
    required this.sessions,
    required this.hasData,
  });
}
