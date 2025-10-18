
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../../core/utils/date_util.dart';
import '../../../domain/entity/models.dart';
import '../../screens/session/session_screen.dart';

class SessionCard extends StatelessWidget {
  final List<SessionExt> sessions;
  final SessionExt session;
  final bool isCompact;

  const SessionCard({
    super.key,
    required this.sessions,
    required this.session,
    this.isCompact = false,
  });

  @override
  Widget build(BuildContext context) {
    var timeWidget = [
      Icon(Icons.access_time, size: 12, color: Colors.grey[500]),
      const SizedBox(width: 4),
      Text(
        '${formatTime(session.startsAt)} - ${formatTime(session.endsAt)}',
        style: TextStyle(fontSize: 11, color: Colors.grey[600]),
      ),
      const SizedBox(width: 8),
    ].toRow();
    var venueWidget = [
      Icon(Icons.location_on, size: 12, color: Colors.grey[500]),
      const SizedBox(width: 4),
      Expanded(
        child: Text(
          session.venue ?? 'Unknown Room',
          style: TextStyle(fontSize: 11, color: Colors.grey[600]),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    ].toRow();
    var speakerWidget = Row(
      children: [
        if (session.avatar != null && session.avatar!.isNotEmpty)
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(session.avatar!),
                fit: BoxFit.cover,
              ),
            ),
          )
        else
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[300],
            ),
            child: Icon(Icons.person, size: 12, color: Colors.grey[600]),
          ),

        const SizedBox(width: 8),

        Text(
          isCompact
              ? session.firstName!
              : '${session.firstName ?? ''} ${session.lastName ?? ''}'.trim(),
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.grey[700],
          ),
          overflow: TextOverflow.ellipsis,
        ).expanded(),
        Icon(
          session.bookmarked == true ? Icons.bookmark : Icons.bookmark_border,
          size: 16,
          color: session.bookmarked == true
              ? Theme.of(context).primaryColor
              : Colors.grey[400],
        ),
      ],
    );

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SessionScreen(
              session: session,
              sessions: sessions,
            ),
          ),
        );
      },
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          padding: const EdgeInsets.all(7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).colorScheme.inverseSurface,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                session.title ?? 'No Title',
                style: TextStyle(
                  fontSize: isCompact ? 14 : 16,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),

              const SizedBox(height: 2),
              isCompact
                  ? Column(children: [timeWidget, venueWidget])
                  : Row(
                      children: [timeWidget.expanded(), venueWidget.expanded()],
                    ),

              const SizedBox(height: 2),

              speakerWidget,
            ],
          ),
        ),
      ),
    );
  }
}
