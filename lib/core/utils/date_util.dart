import 'dart:core';

import 'package:intl/intl.dart';

import '../../domain/entity/session.dart';

String dateNow() {
  return DateFormat('yyyy-MM-ddTHH:mm:ss').format(DateTime.now());
}

String yearNow() {
  return DateFormat('yyyy').format(DateTime.now());
}

String getIso8601Date() {
  final now = DateTime.now().toUtc();
  return '${now.toIso8601String()}Z';
}

String getDayNumber(String date, List<Session> sessions) {
  final dateTime = DateTime.parse(date);

  final firstDate = DateTime.parse(
    sessions.first.startsAt?.substring(0, 10) ?? '',
  );
  return (DateTime(
            dateTime.year,
            dateTime.month,
            dateTime.day,
          ).difference(firstDate).inDays +
          1)
      .toString();
}

String truncateString(String text, int maxLength) {
  if (text.length <= maxLength) {
    return text;
  }
  return text.substring(0, maxLength);
}

String formatDateTab(String date) {
  // Parse the date string into a DateTime object
  final dateTime = DateTime.parse(date);

  // Format the date as "Day X: Weekday Day Month"
  final weekday = DateFormat('EEEE').format(dateTime);
  final day = DateFormat('d').format(dateTime);
  final month = DateFormat('MMM').format(dateTime);

  // Return formatted string
  return '$weekday $day $month';
}

String getCurrentDate() {
  DateTime now = DateTime.now();
  return DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").format(now.toUtc());
}

String getCurrentDayDate({String separator = '-', bool reverse = false}) {
  if (reverse) {
    return DateFormat(
      'yyyy${separator}MM${separator}dd',
    ).format(DateTime.now());
  } else {
    return DateFormat(
      'dd${separator}MM${separator}yyyy',
    ).format(DateTime.now());
  }
}

String formatDate(String date) {
  final DateTime parsedDate = DateTime.parse(date);
  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day);
  final tomorrow = today.add(const Duration(days: 1));

  if (parsedDate == today) {
    return 'Today';
  } else if (parsedDate == tomorrow) {
    return 'Tomorrow';
  } else {
    return '${parsedDate.day}/${parsedDate.month}';
  }
}

String formatTime(String? timeString) {
  if (timeString == null) return '';
  try {
    final time = timeString.substring(11, 16);
    return time;
  } catch (e) {
    return '';
  }
}

String formatDayMonth(String date) {
  final DateTime parsedDate = DateTime.parse(date);
  final day = parsedDate.day;
  final suffix = getDaySuffix(day);
  final month = getMonthAbbreviation(parsedDate.month);
  return '$day$suffix $month';
}

String formatWeekday(String date) {
  final DateTime parsedDate = DateTime.parse(date);
  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day);

  if (parsedDate == today) {
    return 'TODAY';
  } else if (parsedDate == today.add(const Duration(days: 1))) {
    return 'TOMORROW';
  } else {
    return getWeekdayAbbreviation(parsedDate.weekday);
  }
}

String getDaySuffix(int day) {
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

String getMonthAbbreviation(int month) {
  const months = [
    'JAN',
    'FEB',
    'MAR',
    'APR',
    'MAY',
    'JUN',
    'JUL',
    'AUG',
    'SEP',
    'OCT',
    'NOV',
    'DEC',
  ];
  return months[month - 1];
}

String getWeekdayAbbreviation(int weekday) {
  const weekdays = ['MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUN'];
  return weekdays[weekday - 1];
}

String formatTimeRange(String? startsAt, String? endsAt) {
  if (startsAt == null || endsAt == null) return 'TBA';
  return '${formatTime(startsAt)} - ${formatTime(endsAt)}';
}

String calculateDuration(String? startsAt, String? endsAt) {
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
