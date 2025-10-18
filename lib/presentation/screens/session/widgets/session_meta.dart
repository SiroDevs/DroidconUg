part of '../session_screen.dart';

class SessionMeta extends StatelessWidget {
  final SessionExt session;

  const SessionMeta({super.key, required this.session});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            _buildInfoItem(
              icon: Icons.access_time,
              title: 'Time',
              value: _formatTimeRange(session.startsAt, session.endsAt),
            ),
            const SizedBox(width: 16),
            _buildInfoItem(
              icon: Icons.location_on,
              title: 'Venue',
              value: session.venue ?? 'TBA',
            ),
            const SizedBox(width: 16),
            _buildInfoItem(
              icon: Icons.schedule,
              title: 'Duration',
              value: _calculateDuration(session.startsAt, session.endsAt),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoItem({required IconData icon, required String title, required String value}) {
    return Expanded(
      child: Column(
        children: [
          Icon(icon, size: 20, color: ThemeColors.primary),
          const SizedBox(height: 4),
          Text(
            title,
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
          const SizedBox(height: 2),
          Text(
            value,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  String _formatTimeRange(String? startsAt, String? endsAt) {
    if (startsAt == null || endsAt == null) return 'TBA';
    return '${_formatTime(startsAt)} - ${_formatTime(endsAt)}';
  }

  String _formatTime(String? timeString) {
    if (timeString == null) return '';
    try {
      return timeString.substring(11, 16);
    } catch (e) {
      return '';
    }
  }

  String _calculateDuration(String? startsAt, String? endsAt) {
    if (startsAt == null || endsAt == null) return 'TBA';
    try {
      final start = DateTime.parse(startsAt);
      final end = DateTime.parse(endsAt);
      final duration = end.difference(start);
      final hours = duration.inHours;
      final minutes = duration.inMinutes.remainder(60);
      
      if (hours > 0) {
        return '${hours}h ${minutes}m';
      } else {
        return '${minutes}m';
      }
    } catch (e) {
      return 'TBA';
    }
  }
}