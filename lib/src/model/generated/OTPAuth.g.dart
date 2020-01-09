// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'OTPAuth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OTPAuth _$OTPAuthFromJson(Map<String, dynamic> json) {
  return OTPAuth(
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    updated: json['updated'] == null
        ? null
        : DateTime.parse(json['updated'] as String),
    owner: json['owner'] == null
        ? null
        : BasicUser.fromJson(json['owner'] as Map<String, dynamic>),
    updater: json['updater'] == null
        ? null
        : BasicUser.fromJson(json['updater'] as Map<String, dynamic>),
    protocolType: _$enumDecodeNullable(
        _$ProtocolTypeConstantsEnumMap, json['protocolType']),
    algorithm:
        _$enumDecodeNullable(_$CryptoFormatConstantsEnumMap, json['algorithm']),
    timeout: json['timeout'] as int,
    digits: json['digits'] as int,
    secret: json['secret'] as String,
    tokens: (json['tokens'] as List)?.map((e) => e as String)?.toList(),
    qrCode: json['qrCode'] == null
        ? null
        : BasicDocument.fromJson(json['qrCode'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$OTPAuthToJson(OTPAuth instance) => <String, dynamic>{
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'owner': instance.owner,
      'updater': instance.updater,
      'protocolType': _$ProtocolTypeConstantsEnumMap[instance.protocolType],
      'algorithm': _$CryptoFormatConstantsEnumMap[instance.algorithm],
      'timeout': instance.timeout,
      'digits': instance.digits,
      'secret': instance.secret,
      'tokens': instance.tokens,
      'qrCode': instance.qrCode,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$ProtocolTypeConstantsEnumMap = {
  ProtocolTypeConstants.TOTP: 'TOTP',
  ProtocolTypeConstants.HOTP: 'HOTP',
};

const _$CryptoFormatConstantsEnumMap = {
  CryptoFormatConstants.SHA1: 'SHA1',
  CryptoFormatConstants.SHA256: 'SHA256',
  CryptoFormatConstants.SHA512: 'SHA512',
};
