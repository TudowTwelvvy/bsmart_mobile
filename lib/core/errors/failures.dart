//Failure is the base class for all error types in the app

sealed class Failure {
  final String message;
  const Failure(this.message);
}

/// Server-side error from BSmart API (codes 1-9)
class ServerFailure extends Failure {
  final int? code;
  const ServerFailure(super.message, {this.code});
}

/// No internet connection
class NetworkFailure extends Failure {
  const NetworkFailure() : super('No internet connection. Data saved locally.');
}

/// Timeout (GPS 60s, API 2min per spec)
class TimeoutFailure extends Failure {
  const TimeoutFailure() : super('Request timed out. Please try again.');
}

/// Local database error
class CacheFailure extends Failure {
  const CacheFailure() : super('Failed to read or write local data.');
}

/// Authentication error (invalid token, expired session)
class AuthFailure extends Failure {
  const AuthFailure() : super('Session expired. Please log in again.');
}
