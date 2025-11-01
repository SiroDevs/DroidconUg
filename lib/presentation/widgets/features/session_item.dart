import 'package:flutter/material.dart';

import '../../../core/utils/date_util.dart';
import '../../../core/utils/utils.dart';
import '../../../domain/entity/models.dart';
import '../../../core/theme/theme_styles.dart';
import 'tag_item.dart';

class SessionItem extends StatelessWidget {
  final Session session;
  final List<Room> rooms;

  const SessionItem({super.key, required this.session, required this.rooms});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var startTime = Container(
      width: 75,
      padding: const EdgeInsets.all(Sizes.sm),
      child: Text(
        formatTime(session.startsAt!),
        style: const TextStyle(fontSize: 18),
        textAlign: TextAlign.center,
      ),
    );

    var rightContent = Container(
      width: size.width - 100,
      padding: const EdgeInsets.only(
        top: Sizes.sm,
        right: Sizes.sm,
        bottom: Sizes.sm,
      ),
      child: Column(
        children: [
          Text(
            session.title ?? "No Title",
            maxLines: 2,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            session.description ?? "No Description",
            maxLines: 3,
            style: const TextStyle(fontSize: 12),
          ),
          SizedBox(
            height: 25,
            width: MediaQuery.of(context).size.width - 30,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                TagItem(
                  tagText:
                      '${formatTime(session.startsAt!)} - ${formatTime(session.endsAt!)}',
                ),
                TagItem(tagText: '${getRoomName(rooms, session.roomId!)}'),
              ],
            ),
          ),
        ],
      ),
    );

    return Card(
      elevation: 2,
      color: Theme.of(context).colorScheme.onSurface,
      margin: const EdgeInsets.only(top: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(children: [startTime, rightContent]),
        ],
      ),
    );
  }
}
