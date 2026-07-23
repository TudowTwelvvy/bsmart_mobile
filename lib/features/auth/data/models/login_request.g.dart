// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginRequestImpl _$$LoginRequestImplFromJson(Map<String, dynamic> json) =>
    _$LoginRequestImpl(
      token: json['Token'] as String?,
      userId: json['UserId'] as String,
      password: json['PW'] as String,
      deviceId: json['DeviceId'] as String,
      geoLat: json['GeoLat'] as String?,
      geoLong: json['GeoLong'] as String?,
      actionDate: json['ActionDte'] as String,
      workCode: json['WC'] as String?,
    );

Map<String, dynamic> _$$LoginRequestImplToJson(_$LoginRequestImpl instance) =>
    <String, dynamic>{
      'Token': instance.token,
      'UserId': instance.userId,
      'PW': instance.password,
      'DeviceId': instance.deviceId,
      'GeoLat': instance.geoLat,
      'GeoLong': instance.geoLong,
      'ActionDte': instance.actionDate,
      'WC': instance.workCode,
    };
