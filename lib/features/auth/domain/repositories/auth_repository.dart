import '../entities/user.dart';

//he contract that any auth data source must fulfill.

abstract class AuthRepository {
  /// Authenticate a user against BSmartWeb.
  /// Returns a User on success, or a Failure (defined in core/errors).
  Future<User> login({
    required String userId,
    required String password,
    required String deviceId,
    String? geoLat,
    String? geoLong,
  });

  /// Register a new user on BSmartWeb.
  Future<User> register({
    required String userId,
    required String password,
    required String deviceId,
    String? geoLat,
    String? geoLong,
  });

  /// Check if we have a valid stored session.
  Future<bool> isAuthenticated();

  /// Clear the stored session.
  Future<void> logout();
}
