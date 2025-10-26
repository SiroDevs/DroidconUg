import 'package:flutter/material.dart';

import '../../theme/theme_colors.dart';

class DateHeader extends StatelessWidget {
  final String date;
  final int dayNumber;

  const DateHeader({super.key, required this.date, required this.dayNumber});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(
        _formatDateHeader(),
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: ThemeColors.primary,
        ),
      ),
    );
  }

  String _formatDateHeader() {
    try {
      final dateTime = DateTime.parse(date);
      final weekday = _getWeekdayAbbreviation(dateTime.weekday);
      final day = dateTime.day;
      final month = _getMonthAbbreviation(dateTime.month);
      final year = dateTime.year;
      final daySuffix = _getDaySuffix(day);

      return 'Day $dayNumber: $weekday, $day$daySuffix $month, $year';
    } catch (e) {
      return 'Day $dayNumber: $date';
    }
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
}
