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

String formatTime(String dateTimeString) {
  try {
    // Parse the string into a DateTime object
    DateTime dateTime = DateTime.parse(dateTimeString);

    // Format the time to "hh:mm a" (e.g., 10:30 AM)
    String formattedTime = DateFormat('hh:mm a').format(dateTime);
    return formattedTime;
  } catch (e) {
    return 'Invalid date format';
  }
}

String getDayNumber(String date, List<Session> sessions) {
  final dateTime = DateTime.parse(date);

  final firstDate =
      DateTime.parse(sessions.first.startsAt?.substring(0, 10) ?? '');
  return (DateTime(dateTime.year, dateTime.month, dateTime.day)
              .difference(firstDate)
              .inDays +
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
    return DateFormat('yyyy${separator}MM${separator}dd')
        .format(DateTime.now());
  } else {
    return DateFormat('dd${separator}MM${separator}yyyy')
        .format(DateTime.now());
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