part of '../session_screen.dart';

class ParallelSessions extends StatelessWidget {
  final List<SessionExt> sessions;
  final Function(SessionExt) onSessionTap;

  const ParallelSessions({
    super.key,
    required this.sessions,
    required this.onSessionTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.layers, size: 20, color: ThemeColors.primary),
                const SizedBox(width: 8),
                const Text(
                  'Also happening at this time',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: sessions.map((session) {
                return SessionCard(sessions: sessions, session: session);
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
