import '../entities/user.dart';
import '../repositories/auth_repository.dart';

class LoginUseCase {
  final AuthRepository _repository;

  const LoginUseCase(this._repository);

  /// The call method makes the use case callable like a function:
  /// final user = await loginUseCase(params);
  Future<User> call(LoginParams params) async {
    // Business rule: trim whitespace. Prevents "G00001 " from failing.
    final cleanUserId = params.userId.trim();

    // Business rule: password minimum length (defensive validation).
    if (params.password.length < 4) {
      throw ArgumentError('Password must be at least 4 characters');
    }

    return _repository.login(
      userId: cleanUserId,
      password: params.password,
      deviceId: params.deviceId,
      geoLat: params.geoLat,
      geoLong: params.geoLong,
    );
  }
}

/// Parameters object for LoginUseCase.
class LoginParams {
  final String userId;
  final String password;
  final String deviceId;
  final String? geoLat;
  final String? geoLong;

  const LoginParams({
    required this.userId,
    required this.password,
    required this.deviceId,
    this.geoLat,
    this.geoLong,
  });
}
