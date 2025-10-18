part of '../session_screen.dart';

class RoomSchedule extends StatelessWidget {
  final List<SessionExt> sessions;
  final SessionExt currentSession;
  final Function(SessionExt) onSessionTap;

  const RoomSchedule({
    super.key,
    required this.sessions,
    required this.currentSession,
    required this.onSessionTap,
  });

  @override
  Widget build(BuildContext context) {
    final currentIndex = sessions.indexWhere((s) => s.sessionId == currentSession.sessionId);
    
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Room Schedule',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              ...sessions.asMap().entries.map((entry) {
                final index = entry.key;
                final session = entry.value;
                final isCurrent = index == currentIndex;
                final isPast = index < currentIndex;

                return _TimelineItem(
                  session: session,
                  isCurrent: isCurrent,
                  isPast: isPast,
                  onTap: () => onSessionTap(session),
                );
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}

class _TimelineItem extends StatelessWidget {
  final SessionExt session;
  final bool isCurrent;
  final bool isPast;
  final VoidCallback onTap;

  const _TimelineItem({
    required this.session,
    required this.isCurrent,
    required this.isPast,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: Material(
        color: isCurrent 
            ? ThemeColors.primary.withValues(alpha: 0.1)
            : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: isCurrent 
                  ? Border.all(color: ThemeColors.primary, width: 2)
                  : null,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                // Time indicator
                Container(
                  width: 4,
                  height: 40,
                  decoration: BoxDecoration(
                    color: isCurrent 
                        ? ThemeColors.primary
                        : isPast 
                            ? Colors.grey
                            : Colors.grey[300],
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                const SizedBox(width: 12),
                // Session info
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        formatTime(session.startsAt),
                        style: TextStyle(
                          fontSize: 12,
                          color: isPast ? Colors.grey : ThemeColors.primary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        session.title ?? 'Session',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: isPast ? Colors.grey : Colors.black,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                if (isCurrent)
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: ThemeColors.primary,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'NOW',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}