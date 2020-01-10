// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'IpRestriction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IpRestriction _$IpRestrictionFromJson(Map<String, dynamic> json) {
  return IpRestriction(
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    updated: json['updated'] == null
        ? null
        : DateTime.parse(json['updated'] as String),
    type:
        _$enumDecodeNullable(_$IpRestrictionTypeConstantsEnumMap, json['type']),
    address: json['address'] as String,
  );
}

Map<String, dynamic> _$IpRestrictionToJson(IpRestriction instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('created', instance.created?.toIso8601String());
  writeNotNull('updated', instance.updated?.toIso8601String());
  writeNotNull('type', _$IpRestrictionTypeConstantsEnumMap[instance.type]);
  writeNotNull('address', instance.address);
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

const _$IpRestrictionTypeConstantsEnumMap = {
  IpRestrictionTypeConstants.CLONE: 'CLONE',
  IpRestrictionTypeConstants.USER: 'USER',
  IpRestrictionTypeConstants.CONTEXT: 'CONTEXT',
};
