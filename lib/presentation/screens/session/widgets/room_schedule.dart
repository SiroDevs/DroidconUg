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
    
    // Get previous and next sessions (excluding current)
    final SessionExt? previousSession = currentIndex > 0 ? sessions[currentIndex - 1] : null;
    final SessionExt? nextSession = currentIndex < sessions.length - 1 ? sessions[currentIndex + 1] : null;

    // Check if we have any sessions to show
    final hasPrevious = previousSession != null;
    final hasNext = nextSession != null;

    if (!hasPrevious && !hasNext) {
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
                _buildEmptySchedule(),
              ],
            ),
          ),
        ),
      );
    }

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
              
              // Previous Session
              if (hasPrevious) ...[
                _buildSessionSection(
                  title: 'Previous Session',
                  session: previousSession!,
                  isPrevious: true,
                  onTap: () => onSessionTap(previousSession),
                ),
                if (hasNext) const SizedBox(height: 20),
              ],
              
              // Next Session
              if (hasNext) 
                _buildSessionSection(
                  title: 'Next Session',
                  session: nextSession!,
                  isPrevious: false,
                  onTap: () => onSessionTap(nextSession),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSessionSection({
    required String title,
    required SessionExt session,
    required bool isPrevious,
    required VoidCallback onTap,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              isPrevious ? Icons.arrow_upward : Icons.arrow_downward,
              size: 16,
              color: isPrevious ? Colors.grey : ThemeColors.primary,
            ),
            const SizedBox(width: 6),
            Text(
              title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: isPrevious ? Colors.grey : ThemeColors.primary,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        _TimelineItem(
          session: session,
          isPrevious: isPrevious,
          onTap: onTap,
        ),
      ],
    );
  }

  Widget _buildEmptySchedule() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: const Column(
        children: [
          Icon(
            Icons.schedule,
            size: 40,
            color: Colors.grey,
          ),
          SizedBox(height: 8),
          Text(
            'No other sessions in this room today',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
              fontStyle: FontStyle.italic,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class _TimelineItem extends StatelessWidget {
  final SessionExt session;
  final bool isPrevious;
  final VoidCallback onTap;

  const _TimelineItem({
    required this.session,
    required this.isPrevious,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border.all(
              color: isPrevious ? Colors.grey[300]! : ThemeColors.primary.withOpacity(0.3),
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              // Time indicator
              Container(
                width: 4,
                height: 40,
                decoration: BoxDecoration(
                  color: isPrevious ? Colors.grey : ThemeColors.primary,
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
                        color: isPrevious ? Colors.grey : ThemeColors.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      session.title ?? 'Session',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: isPrevious ? Colors.grey : Colors.black,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (session.venue != null) ...[
                      const SizedBox(height: 4),
                      Text(
                        session.venue!,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              // Arrow indicator
              Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: isPrevious ? Colors.grey : ThemeColors.primary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}