import 'dart:async';

import 'package:http/http.dart';

import '../common/utils/constants/api_constants.dart';
import '../core/di/injectable.dart';
import '../common/utils/api_util.dart';
import '../common/utils/app_util.dart';
import '../domain/entity/droidcon.dart';
import '../domain/repository/database_repository.dart';

class HomeClient {
  Future<Response> getSessions() async {
    return await makeApiGetRequest(ApiConstants.allSessionize, {
      'Content-Type': 'application/json',
    });
  }

  Future<Droidcon> fetchLocalData() async {
    final dbRepo = getIt<DatabaseRepository>();
    try {
      final bookmarks = await dbRepo.fetchBookmarks();
      final rooms = await dbRepo.fetchRooms();
      final sessions = await dbRepo.fetchSessions();
      final speakers = await dbRepo.fetchSpeakers();

      final hasData =
          sessions.isNotEmpty || speakers.isNotEmpty || rooms.isNotEmpty;

      return Droidcon(
        bookmarks: bookmarks,
        rooms: rooms,
        speakers: speakers,
        sessions: sessions,
        hasData: hasData,
      );
    } catch (e) {
      logger("Droidcon fetching failed: $e");
      return Droidcon(
        bookmarks: [],
        rooms: [],
        speakers: [],
        sessions: [],
        hasData: false,
      );
    }
  }
}
