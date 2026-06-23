import 'package:intl/intl.dart';

String getFormattedDate() {
  final now = DateTime.now();

  final dayName = DateFormat('EEEE').format(now); // Monday
  final date = DateFormat('dd MMM yyyy').format(now); // 21 Jun 2026

  return '$dayName, $date';
}

String formatTime(DateTime dateTime) {
  final hour = dateTime.hour;
  final minute = dateTime.minute;

  final period = hour >= 12 ? 'PM' : 'AM';
  final formattedHour = hour % 12 == 0 ? 12 : hour % 12;

  return '$formattedHour:${minute.toString().padLeft(2, '0')} $period';
}
