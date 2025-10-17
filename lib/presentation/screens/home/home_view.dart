part of 'home_screen.dart';

class HomeView extends StatelessWidget {
  final List<SessionExt> sessions;

  const HomeView({super.key, required this.sessions});

  @override
  Widget build(BuildContext context) {
    final sortedSessions = List<SessionExt>.from(sessions)
      ..sort((a, b) => (a.startsAt ?? '').compareTo(b.startsAt ?? ''));

    return sortedSessions.isEmpty
        ? _buildEmptyState()
        : ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: sortedSessions.length,
            itemBuilder: (context, index) {
              final session = sortedSessions[index];
              return _buildSessionItem(session);
            },
          );
  }

  Widget _buildSessionItem(SessionExt session) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              session.title ?? 'No Title',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),

            const SizedBox(height: 8),

            // Time
            Row(
              children: [
                Icon(Icons.access_time, size: 16, color: Colors.grey[600]),
                const SizedBox(width: 4),
                Text(
                  _formatDateTime(session.startsAt),
                  style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                ),
              ],
            ),

            const SizedBox(height: 4),

            // Room
            Row(
              children: [
                Icon(Icons.location_on, size: 16, color: Colors.grey[600]),
                const SizedBox(width: 4),
                Text(
                  session.venue ?? 'Unknown Room',
                  style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                ),
              ],
            ),

            const SizedBox(height: 4),

            // Speaker
            // Row(
            //   children: [
            //     Icon(Icons.person, size: 16, color: Colors.grey[600]),
            //     const SizedBox(width: 4),
            //     Text(
            //       '${session.firstName ?? ''} ${session.lastName ?? ''}'.trim(),
            //       style: TextStyle(fontSize: 14, color: Colors.grey[700]),
            //     ),

            //     const Spacer(),

            //     // Bookmark indicator
            //     if (session.bookmarked == true)
            //       Icon(Icons.bookmark, size: 20, color: Colors.blue),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.event_busy, size: 64, color: Colors.grey),
          SizedBox(height: 16),
          Text(
            'No sessions available',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  String _formatDateTime(String? dateTime) {
    if (dateTime == null || dateTime.isEmpty) return 'Time not set';

    try {
      final parsed = DateTime.parse(dateTime);
      return '${_formatDate(parsed)} at ${_formatTime(parsed)}';
    } catch (e) {
      return dateTime;
    }
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }

  String _formatTime(DateTime date) {
    final hour = date.hour.toString().padLeft(2, '0');
    final minute = date.minute.toString().padLeft(2, '0');
    return '$hour:$minute';
  }
}
