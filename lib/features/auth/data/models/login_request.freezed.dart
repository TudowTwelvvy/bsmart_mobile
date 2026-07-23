// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LoginRequest _$LoginRequestFromJson(Map<String, dynamic> json) {
  return _LoginRequest.fromJson(json);
}

/// @nodoc
mixin _$LoginRequest {
  /// The API parameter is 'Token'. For initial login, this is empty.
  @JsonKey(name: 'Token')
  String? get token => throw _privateConstructorUsedError;

  /// The API parameter is 'UserId'. Maps to our domain 'userId'.
  @JsonKey(name: 'UserId')
  String get userId => throw _privateConstructorUsedError;

  /// The API parameter is 'PW'. Never log this value.
  @JsonKey(name: 'PW')
  String get password => throw _privateConstructorUsedError;

  /// The API parameter is 'DeviceId'.
  @JsonKey(name: 'DeviceId')
  String get deviceId => throw _privateConstructorUsedError;

  /// The API parameter is 'GeoLat'. Nullable per spec.
  @JsonKey(name: 'GeoLat')
  String? get geoLat => throw _privateConstructorUsedError;

  /// The API parameter is 'GeoLong'. Nullable per spec.
  @JsonKey(name: 'GeoLong')
  String? get geoLong => throw _privateConstructorUsedError;

  /// The API parameter is 'ActionDte'. ISO8601 format.
  @JsonKey(name: 'ActionDte')
  String get actionDate => throw _privateConstructorUsedError;

  /// The API parameter is 'WC'. Work Code, empty for login.
  @JsonKey(name: 'WC')
  String? get workCode => throw _privateConstructorUsedError;

  /// Serializes this LoginRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginRequestCopyWith<LoginRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginRequestCopyWith<$Res> {
  factory $LoginRequestCopyWith(
    LoginRequest value,
    $Res Function(LoginRequest) then,
  ) = _$LoginRequestCopyWithImpl<$Res, LoginRequest>;
  @useResult
  $Res call({
    @JsonKey(name: 'Token') String? token,
    @JsonKey(name: 'UserId') String userId,
    @JsonKey(name: 'PW') String password,
    @JsonKey(name: 'DeviceId') String deviceId,
    @JsonKey(name: 'GeoLat') String? geoLat,
    @JsonKey(name: 'GeoLong') String? geoLong,
    @JsonKey(name: 'ActionDte') String actionDate,
    @JsonKey(name: 'WC') String? workCode,
  });
}

/// @nodoc
class _$LoginRequestCopyWithImpl<$Res, $Val extends LoginRequest>
    implements $LoginRequestCopyWith<$Res> {
  _$LoginRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? userId = null,
    Object? password = null,
    Object? deviceId = null,
    Object? geoLat = freezed,
    Object? geoLong = freezed,
    Object? actionDate = null,
    Object? workCode = freezed,
  }) {
    return _then(
      _value.copyWith(
            token: freezed == token
                ? _value.token
                : token // ignore: cast_nullable_to_non_nullable
                      as String?,
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            password: null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                      as String,
            deviceId: null == deviceId
                ? _value.deviceId
                : deviceId // ignore: cast_nullable_to_non_nullable
                      as String,
            geoLat: freezed == geoLat
                ? _value.geoLat
                : geoLat // ignore: cast_nullable_to_non_nullable
                      as String?,
            geoLong: freezed == geoLong
                ? _value.geoLong
                : geoLong // ignore: cast_nullable_to_non_nullable
                      as String?,
            actionDate: null == actionDate
                ? _value.actionDate
                : actionDate // ignore: cast_nullable_to_non_nullable
                      as String,
            workCode: freezed == workCode
                ? _value.workCode
                : workCode // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LoginRequestImplCopyWith<$Res>
    implements $LoginRequestCopyWith<$Res> {
  factory _$$LoginRequestImplCopyWith(
    _$LoginRequestImpl value,
    $Res Function(_$LoginRequestImpl) then,
  ) = __$$LoginRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'Token') String? token,
    @JsonKey(name: 'UserId') String userId,
    @JsonKey(name: 'PW') String password,
    @JsonKey(name: 'DeviceId') String deviceId,
    @JsonKey(name: 'GeoLat') String? geoLat,
    @JsonKey(name: 'GeoLong') String? geoLong,
    @JsonKey(name: 'ActionDte') String actionDate,
    @JsonKey(name: 'WC') String? workCode,
  });
}

/// @nodoc
class __$$LoginRequestImplCopyWithImpl<$Res>
    extends _$LoginRequestCopyWithImpl<$Res, _$LoginRequestImpl>
    implements _$$LoginRequestImplCopyWith<$Res> {
  __$$LoginRequestImplCopyWithImpl(
    _$LoginRequestImpl _value,
    $Res Function(_$LoginRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? userId = null,
    Object? password = null,
    Object? deviceId = null,
    Object? geoLat = freezed,
    Object? geoLong = freezed,
    Object? actionDate = null,
    Object? workCode = freezed,
  }) {
    return _then(
      _$LoginRequestImpl(
        token: freezed == token
            ? _value.token
            : token // ignore: cast_nullable_to_non_nullable
                  as String?,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        password: null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String,
        deviceId: null == deviceId
            ? _value.deviceId
            : deviceId // ignore: cast_nullable_to_non_nullable
                  as String,
        geoLat: freezed == geoLat
            ? _value.geoLat
            : geoLat // ignore: cast_nullable_to_non_nullable
                  as String?,
        geoLong: freezed == geoLong
            ? _value.geoLong
            : geoLong // ignore: cast_nullable_to_non_nullable
                  as String?,
        actionDate: null == actionDate
            ? _value.actionDate
            : actionDate // ignore: cast_nullable_to_non_nullable
                  as String,
        workCode: freezed == workCode
            ? _value.workCode
            : workCode // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginRequestImpl implements _LoginRequest {
  const _$LoginRequestImpl({
    @JsonKey(name: 'Token') this.token,
    @JsonKey(name: 'UserId') required this.userId,
    @JsonKey(name: 'PW') required this.password,
    @JsonKey(name: 'DeviceId') required this.deviceId,
    @JsonKey(name: 'GeoLat') this.geoLat,
    @JsonKey(name: 'GeoLong') this.geoLong,
    @JsonKey(name: 'ActionDte') required this.actionDate,
    @JsonKey(name: 'WC') this.workCode,
  });

  factory _$LoginRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginRequestImplFromJson(json);

  /// The API parameter is 'Token'. For initial login, this is empty.
  @override
  @JsonKey(name: 'Token')
  final String? token;

  /// The API parameter is 'UserId'. Maps to our domain 'userId'.
  @override
  @JsonKey(name: 'UserId')
  final String userId;

  /// The API parameter is 'PW'. Never log this value.
  @override
  @JsonKey(name: 'PW')
  final String password;

  /// The API parameter is 'DeviceId'.
  @override
  @JsonKey(name: 'DeviceId')
  final String deviceId;

  /// The API parameter is 'GeoLat'. Nullable per spec.
  @override
  @JsonKey(name: 'GeoLat')
  final String? geoLat;

  /// The API parameter is 'GeoLong'. Nullable per spec.
  @override
  @JsonKey(name: 'GeoLong')
  final String? geoLong;

  /// The API parameter is 'ActionDte'. ISO8601 format.
  @override
  @JsonKey(name: 'ActionDte')
  final String actionDate;

  /// The API parameter is 'WC'. Work Code, empty for login.
  @override
  @JsonKey(name: 'WC')
  final String? workCode;

  @override
  String toString() {
    return 'LoginRequest(token: $token, userId: $userId, password: $password, deviceId: $deviceId, geoLat: $geoLat, geoLong: $geoLong, actionDate: $actionDate, workCode: $workCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginRequestImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.geoLat, geoLat) || other.geoLat == geoLat) &&
            (identical(other.geoLong, geoLong) || other.geoLong == geoLong) &&
            (identical(other.actionDate, actionDate) ||
                other.actionDate == actionDate) &&
            (identical(other.workCode, workCode) ||
                other.workCode == workCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    token,
    userId,
    password,
    deviceId,
    geoLat,
    geoLong,
    actionDate,
    workCode,
  );

  /// Create a copy of LoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginRequestImplCopyWith<_$LoginRequestImpl> get copyWith =>
      __$$LoginRequestImplCopyWithImpl<_$LoginRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginRequestImplToJson(this);
  }
}

abstract class _LoginRequest implements LoginRequest {
  const factory _LoginRequest({
    @JsonKey(name: 'Token') final String? token,
    @JsonKey(name: 'UserId') required final String userId,
    @JsonKey(name: 'PW') required final String password,
    @JsonKey(name: 'DeviceId') required final String deviceId,
    @JsonKey(name: 'GeoLat') final String? geoLat,
    @JsonKey(name: 'GeoLong') final String? geoLong,
    @JsonKey(name: 'ActionDte') required final String actionDate,
    @JsonKey(name: 'WC') final String? workCode,
  }) = _$LoginRequestImpl;

  factory _LoginRequest.fromJson(Map<String, dynamic> json) =
      _$LoginRequestImpl.fromJson;

  /// The API parameter is 'Token'. For initial login, this is empty.
  @override
  @JsonKey(name: 'Token')
  String? get token;

  /// The API parameter is 'UserId'. Maps to our domain 'userId'.
  @override
  @JsonKey(name: 'UserId')
  String get userId;

  /// The API parameter is 'PW'. Never log this value.
  @override
  @JsonKey(name: 'PW')
  String get password;

  /// The API parameter is 'DeviceId'.
  @override
  @JsonKey(name: 'DeviceId')
  String get deviceId;

  /// The API parameter is 'GeoLat'. Nullable per spec.
  @override
  @JsonKey(name: 'GeoLat')
  String? get geoLat;

  /// The API parameter is 'GeoLong'. Nullable per spec.
  @override
  @JsonKey(name: 'GeoLong')
  String? get geoLong;

  /// The API parameter is 'ActionDte'. ISO8601 format.
  @override
  @JsonKey(name: 'ActionDte')
  String get actionDate;

  /// The API parameter is 'WC'. Work Code, empty for login.
  @override
  @JsonKey(name: 'WC')
  String? get workCode;

  /// Create a copy of LoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginRequestImplCopyWith<_$LoginRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
