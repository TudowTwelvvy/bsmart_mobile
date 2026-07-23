class User {
  final String userId;
  final String displayName;
  final String? currentWorkCode;

  const User({
    required this.userId,
    required this.displayName,
    this.currentWorkCode,
  });

  // Business rule: BSmart usernames follow the pattern Letter + 5 digits.
  bool get isValidUsername {
    final regex = RegExp(r'^[A-Za-z]\d{5}$');
    return regex.hasMatch(userId);
  }
}
