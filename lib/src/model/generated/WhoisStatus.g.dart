// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WhoisStatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WhoisStatus _$WhoisStatusFromJson(Map<String, dynamic> json) {
  return WhoisStatus(
    status:
        _$enumDecodeNullable(_$DomainStudioDomainStatusEnumMap, json['status']),
  );
}

Map<String, dynamic> _$WhoisStatusToJson(WhoisStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', _$DomainStudioDomainStatusEnumMap[instance.status]);
  return val;
}

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

const _$DomainStudioDomainStatusEnumMap = {
  DomainStudioDomainStatus.FREE: 'FREE',
  DomainStudioDomainStatus.ASSIGNED: 'ASSIGNED',
  DomainStudioDomainStatus.MARKET: 'MARKET',
  DomainStudioDomainStatus.PREMIUM: 'PREMIUM',
  DomainStudioDomainStatus.INVALID: 'INVALID',
  DomainStudioDomainStatus.ERROR: 'ERROR',
  DomainStudioDomainStatus.TIMEOUT: 'TIMEOUT',
  DomainStudioDomainStatus.RESERVED: 'RESERVED',
  DomainStudioDomainStatus.PREMIUM_CLAIM: 'PREMIUM_CLAIM',
  DomainStudioDomainStatus.CLAIM: 'CLAIM',
};
