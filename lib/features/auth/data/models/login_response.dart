import 'package:freezed_annotation/freezed_annotation.dart';

/// DTO for the BSMLogin API response.
/// ReturnCode 0 = SUCCESS
/// ReturnCode 1-9 = Error codes
part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    /// 0 = success. 1-9 = error.
    @JsonKey(name: 'ReturnCode') required int returnCode,

    /// The session token (GUID string) returned on success.
    @JsonKey(name: 'Token') String? token,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

/// Extension to convert API response to domain entity.
///
/// WHY an extension: We keep the model clean (just data) and put
/// mapping logic in a separate file. This follows the Single
/// Responsibility Principle.
extension LoginResponseX on LoginResponse {
  /// Returns true if the API signaled success.
  bool get isSuccess => returnCode == 0;

  /// Returns true if the API signaled an error.
  bool get isFailure => returnCode != 0;
}
