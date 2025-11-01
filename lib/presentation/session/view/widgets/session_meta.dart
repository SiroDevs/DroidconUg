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
        child: Column(
          children: [
            Text(
              _formatDate(session.startsAt),
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: ThemeColors.primary,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 5),

            Row(
              children: [
                _buildInfoItem(
                  icon: Icons.access_time,
                  title: 'Time',
                  value: _formatTimeRange(session.startsAt, session.endsAt),
                ),
                const SizedBox(width: 10),
                _buildInfoItem(
                  icon: Icons.location_on,
                  title: 'Room',
                  value: session.venue ?? 'TBA',
                ),
                const SizedBox(width: 10),
                _buildInfoItem(
                  icon: Icons.schedule,
                  title: 'Duration',
                  value: _calculateDuration(session.startsAt, session.endsAt),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoItem({
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Expanded(
      child: Column(
        children: [
          [
            const SizedBox().expanded(),
            Icon(icon, size: 20, color: ThemeColors.primary),
            const SizedBox(height: 5),
            Text(
              title,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
            const SizedBox().expanded(),
          ].toRow(),
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

  String _formatDate(String? dateString) {
    if (dateString == null) return 'Date TBA';
    try {
      final date = DateTime.parse(dateString);
      return _formatDateToCustomString(date);
    } catch (e) {
      return 'Date TBA';
    }
  }

  String _formatDateToCustomString(DateTime date) {
    final weekday = _getWeekdayAbbreviation(date.weekday);
    final day = date.day;
    final month = _getMonthAbbreviation(date.month);
    final year = date.year;
    final daySuffix = _getDaySuffix(day);

    return '$weekday, $day$daySuffix $month, $year';
  }

  String _getWeekdayAbbreviation(int weekday) {
    const weekdays = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
    return weekdays[weekday - 1];
  }

  String _getMonthAbbreviation(int month) {
    const months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];
    return months[month - 1];
  }

  String _getDaySuffix(int day) {
    if (day >= 11 && day <= 13) return 'th';
    switch (day % 10) {
      case 1:
        return 'st';
      case 2:
        return 'nd';
      case 3:
        return 'rd';
      default:
        return 'th';
    }
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
