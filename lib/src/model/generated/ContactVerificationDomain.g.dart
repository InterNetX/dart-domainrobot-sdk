// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContactVerificationDomain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactVerificationDomain _$ContactVerificationDomainFromJson(
    Map<String, dynamic> json) {
  return ContactVerificationDomain(
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    updated: json['updated'] == null
        ? null
        : DateTime.parse(json['updated'] as String),
    name: json['name'] as String,
    idn: json['idn'] as String,
    status:
        _$enumDecodeNullable(_$GenericStatusConstantsEnumMap, json['status']),
    deactivation: json['deactivation'] == null
        ? null
        : DateTime.parse(json['deactivation'] as String),
  );
}

Map<String, dynamic> _$ContactVerificationDomainToJson(
    ContactVerificationDomain instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('created', instance.created?.toIso8601String());
  writeNotNull('updated', instance.updated?.toIso8601String());
  writeNotNull('name', instance.name);
  writeNotNull('idn', instance.idn);
  writeNotNull('status', _$GenericStatusConstantsEnumMap[instance.status]);
  writeNotNull('deactivation', instance.deactivation?.toIso8601String());
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

const _$GenericStatusConstantsEnumMap = {
  GenericStatusConstants.PENDING: 'PENDING',
  GenericStatusConstants.SUCCESS: 'SUCCESS',
  GenericStatusConstants.FAILED: 'FAILED',
  GenericStatusConstants.NOT_SET: 'NOT_SET',
};
