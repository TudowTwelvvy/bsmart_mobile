import 'dart:async';
import 'package:flutter/material.dart';

/// The live date/time bar displayed on every BSmart screen.
class LiveClockBar extends StatelessWidget {
  const LiveClockBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      // Full-width blue bar matching the spec's design
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(8),
      ),
      child: StreamBuilder<DateTime>(
        stream: Stream.periodic(
          const Duration(seconds: 1),
          (_) => DateTime.now(),
        ),
        initialData: DateTime.now(),
        builder: (context, snapshot) {
          final now = snapshot.data!;

          final dayName = _dayName(now.weekday);
          final monthName = _monthName(now.month);
          final day = now.day.toString().padLeft(2, '0');
          final hour = now.hour.toString().padLeft(2, '0');
          final minute = now.minute.toString().padLeft(2, '0');
          final seconds = now.second.toString().padLeft(2, '0');

          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$dayName $day $monthName ${now.year}',
                style: theme.textTheme.titleMedium?.copyWith(
                  color: theme.colorScheme.onPrimary,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '$hour:$minute',
                style: theme.textTheme.titleLarge?.copyWith(
                  color: theme.colorScheme.onPrimary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                seconds,
                style: theme.textTheme.titleLarge?.copyWith(
                  color: theme.colorScheme.onPrimary,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  String _dayName(int weekday) {
    const days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
    return days[weekday - 1];
  }

  String _monthName(int month) {
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
}
