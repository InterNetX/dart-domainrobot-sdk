// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContactUkExtensions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactUkExtensions _$ContactUkExtensionsFromJson(Map<String, dynamic> json) {
  return ContactUkExtensions(
    entityType:
        _$enumDecodeNullable(_$UkTypeConstantsEnumMap, json['entityType']),
  );
}

Map<String, dynamic> _$ContactUkExtensionsToJson(
        ContactUkExtensions instance) =>
    <String, dynamic>{
      'entityType': _$UkTypeConstantsEnumMap[instance.entityType],
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

const _$UkTypeConstantsEnumMap = {
  UkTypeConstants.LTD: 'LTD',
  UkTypeConstants.PLC: 'PLC',
  UkTypeConstants.PTNR: 'PTNR',
  UkTypeConstants.STRA: 'STRA',
  UkTypeConstants.LLP: 'LLP',
  UkTypeConstants.IP: 'IP',
  UkTypeConstants.IND: 'IND',
  UkTypeConstants.SCH: 'SCH',
  UkTypeConstants.RCHAR: 'RCHAR',
  UkTypeConstants.GOV: 'GOV',
  UkTypeConstants.CRC: 'CRC',
  UkTypeConstants.STAT: 'STAT',
  UkTypeConstants.OTHER: 'OTHER',
  UkTypeConstants.FIND: 'FIND',
  UkTypeConstants.FCORP: 'FCORP',
  UkTypeConstants.FOTHER: 'FOTHER',
};
