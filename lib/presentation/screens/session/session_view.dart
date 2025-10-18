part of 'session_screen.dart';

class SessionView extends StatelessWidget {
  final SessionExt currentSession;
  final List<SessionExt> roomSessions;
  final List<SessionExt> parallelSessions;
  final ScrollController scrollController;
  final Function(SessionExt) onSessionTap;
  final VoidCallback onToggleBookmark;
  final Speaker speaker;

  const SessionView({
    super.key,
    required this.currentSession,
    required this.roomSessions,
    required this.parallelSessions,
    required this.scrollController,
    required this.onSessionTap,
    required this.onToggleBookmark,
    required this.speaker,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollController,
      slivers: [
        SliverAppBar(
          expandedHeight: 200,
          floating: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                currentSession.title ?? 'Session',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            background: _buildSessionHeader(),
          ),
          actions: [
            IconButton(
              icon: Icon(
                currentSession.bookmarked == true
                    ? Icons.bookmark
                    : Icons.bookmark_border,
                color: Colors.white,
              ),
              onPressed: onToggleBookmark,
            ),
          ],
        ),

        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                SessionMeta(session: currentSession),
                const SizedBox(height: 10),

                SessionSpeaker(speaker: speaker),

                const SizedBox(height: 10),
                if (parallelSessions.isNotEmpty) ...[
                  ParallelSessions(
                    sessions: parallelSessions,
                    onSessionTap: onSessionTap,
                  ),
                  const SizedBox(height: 24),
                ],
              ],
            ),
          ),
        ),

        SliverToBoxAdapter(
          child: RoomSchedule(
            sessions: roomSessions,
            currentSession: currentSession,
            onSessionTap: onSessionTap,
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 10)),
      ],
    );
  }

  Widget _buildSessionHeader() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            ThemeColors.primary.withValues(alpha: 0.8),
            ThemeColors.primary.withValues(alpha: 0.6),
          ],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            right: -50,
            bottom: -50,
            child: Icon(
              Icons.event_note,
              size: 150,
              color: Colors.white.withValues(alpha: 0.1),
            ),
          ),
          Container(color: Colors.black.withValues(alpha: 0.3)),
        ],
      ),
    );
  }
}
