// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Modifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Modifier _$ModifierFromJson(Map<String, dynamic> json) {
  return Modifier(
    search: json['search'] as String,
    replace: json['replace'] as String,
    type: _$enumDecodeNullable(_$ModifierConstantsEnumMap, json['type']),
  );
}

Map<String, dynamic> _$ModifierToJson(Modifier instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('search', instance.search);
  writeNotNull('replace', instance.replace);
  writeNotNull('type', _$ModifierConstantsEnumMap[instance.type]);
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

const _$ModifierConstantsEnumMap = {
  ModifierConstants.TTL: 'TTL',
  ModifierConstants.MX: 'MX',
  ModifierConstants.A: 'A',
  ModifierConstants.AAAA: 'AAAA',
  ModifierConstants.SOA_EMAIL: 'SOA_EMAIL',
  ModifierConstants.NSERVER: 'NSERVER',
  ModifierConstants.CNAME: 'CNAME',
  ModifierConstants.TXT: 'TXT',
  ModifierConstants.ALL: 'ALL',
  ModifierConstants.MAIN_IP: 'MAIN_IP',
  ModifierConstants.OWNERC: 'OWNERC',
  ModifierConstants.ADMINC: 'ADMINC',
  ModifierConstants.TECHC: 'TECHC',
  ModifierConstants.ZONEC: 'ZONEC',
  ModifierConstants.BILLINGC: 'BILLINGC',
  ModifierConstants.ALIAS: 'ALIAS',
};
