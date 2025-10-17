import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';

import '../../core/di/injectable.dart';
import '../../core/utils/app_util.dart';
import '../../data/home_client.dart';
import '../../data/models/sessionize_resp.dart';
import '../entity/droidcon.dart';
import '../entity/models.dart';
import 'database_repository.dart';

class HomeRepository {
  final _homeClient = HomeClient();

  /// Fetch all data
  Future<Response> getSessions() async {
    var resp = await _homeClient.getSessions();
    switch (resp.statusCode) {
      case 200:
        final dbRepo = getIt<DatabaseRepository>();
        final sessionize = SessionizeResp.fromJson(jsonDecode(resp.body));
        try {
          dbRepo.removeAllLinks();
          dbRepo.removeAllRooms();
          dbRepo.removeAllSessions();
          dbRepo.removeAllSpeakers();
          dbRepo.removeAllSessionizes();
        } catch (e) {
          logger('Error while removing db tables: $e');
        }

        for (final room in sessionize.rooms!) {
          try {
            dbRepo.saveRoom(
              Room(id: room.id, name: room.name, sort: room.sort),
            );
          } catch (e) {
            logger('Error while adding a room to the db: $e');
          }
        }

        for (final session in sessionize.sessions!) {
          try {
            dbRepo.saveSession(
              Session(
                id: session.id,
                title: session.title,
                description: session.description,
                startsAt: session.startsAt,
                endsAt: session.endsAt,
                liveUrl: session.liveUrl,
                recordingUrl: session.recordingUrl,
                roomId: session.roomId,
                bookmarked: false,
              ),
            );
          } catch (e) {
            logger('Error while adding a room to the db: $e');
          }
        }

        for (final speaker in sessionize.speakers!) {
          try {
            dbRepo.saveSpeaker(
              Speaker(
                id: speaker.id,
                firstName: speaker.firstName,
                lastName: speaker.lastName,
                bio: speaker.bio,
                tagLine: speaker.tagLine,
                avatar: speaker.profilePicture,
              ),
            );
            for (final session in speaker.sessions!) {
              try {
                dbRepo.saveSessionize(
                  Sessionize(
                    sessionId: session.toString(),
                    speakerId: speaker.id,
                  ),
                );
              } catch (e) {
                logger('Error while adding a Sessionize to the db: $e');
              }
            }
            for (final link in speaker.links!) {
              try {
                dbRepo.saveLink(
                  Link(speakerId: speaker.id, title: link.title, url: link.url),
                );
              } catch (e) {
                logger('Error while adding a Link to the db: $e');
              }
            }
          } catch (e) {
            logger('Error while adding a speaker to the db: $e');
          }
        }
        break;

      default:
        logger('Do nothing');
    }
    return resp;
  }

  Future<String> findSpeakerName(String session, dynamic speakers) async {
    String speakerName = '';
    for (final speaker in speakers) {
      try {
        if (speaker['sessions'].toString().contains(session)) {
          speakerName = speaker['fullName'];
          break;
        }
      } catch (e) {
        logger('Error finding the speaker name for session $session: $e');
      }
    }
    return speakerName;
  }

  Future<Droidcon> fetchLocalData() async {
    return _homeClient.fetchLocalData();
  }
}
