/// Represents an authentication session token returned by BSmartWeb.
class AuthToken {
  final String token;
  final DateTime issuedAt;

  const AuthToken({required this.token, required this.issuedAt});

  /// Business rule: Tokens expire after 24 hours.

  bool get isExpired {
    final expiry = issuedAt.add(const Duration(hours: 24));
    return DateTime.now().isAfter(expiry);
  }
}
