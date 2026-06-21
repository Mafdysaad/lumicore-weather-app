import 'package:intl/intl.dart';

String getFormattedDate() {
  final now = DateTime.now();

  final dayName = DateFormat('EEEE').format(now); // Monday
  final date = DateFormat('dd MMM yyyy').format(now); // 21 Jun 2026

  return '$dayName, $date';
}
