/// String extensions used across the app.
extension StringX on String {
  /// Checks if the string is a valid BSmart username format.
  /// BSmart usernames follow the pattern: letter + 5 digits (e.g G00001)
  bool get isValidBSmartUsername {
    final regex = RegExp(r'^[A-Za-z]\\d{5}$');
    return regex.hasMatch(this);
  }

  /// Capitalizes the first letter of each word.
  /// "foreman brown" → "Foreman Brown"
  String get toTitleCase {
    if (isEmpty) return this;
    return split(' ')
        .map(
          (word) => word.isEmpty
              ? ''
              : '${word[0].toUpperCase()}${word.substring(1).toLowerCase()}',
        )
        .join(' ');
  }
}

/// DateTime extensions for BSmart formatting.
extension DateTimeX on DateTime {
  /// Formats as "Wed 30 Aug 2017  16:39"
  String toBSmartFormat() {
    const days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
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

    final dayName = days[weekday - 1];
    final monthName = months[month - 1];
    final paddedDay = day.toString().padLeft(2, '0');
    final paddedHour = hour.toString().padLeft(2, '0');
    final paddedMinute = minute.toString().padLeft(2, '0');

    return '$dayName $paddedDay $monthName $year  $paddedHour:$paddedMinute';
  }

  /// Formats as "dd/MM/yyyy HH:mm" for API calls
  String toBSmartApiFormat() {
    final paddedDay = day.toString().padLeft(2, '0');
    final paddedMonth = month.toString().padLeft(2, '0');
    final paddedHour = hour.toString().padLeft(2, '0');
    final paddedMinute = minute.toString().padLeft(2, '0');
    return '$paddedDay/$paddedMonth/$year $paddedHour:$paddedMinute';
  }
}
