// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContactItExtensions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactItExtensions _$ContactItExtensionsFromJson(Map<String, dynamic> json) {
  return ContactItExtensions(
    entityType: _$enumDecodeNullable(
        _$ItEntityTypeConstantsEnumMap, json['entityType']),
  );
}

Map<String, dynamic> _$ContactItExtensionsToJson(
        ContactItExtensions instance) =>
    <String, dynamic>{
      'entityType': _$ItEntityTypeConstantsEnumMap[instance.entityType],
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

const _$ItEntityTypeConstantsEnumMap = {
  ItEntityTypeConstants.ITALIAN_AND_FOREIGN_NATURAL_PERSONS:
      'ITALIAN_AND_FOREIGN_NATURAL_PERSONS',
  ItEntityTypeConstants.ITALIAN_COMPANIES_ONE_MAN_COMPANIES:
      'ITALIAN_COMPANIES_ONE_MAN_COMPANIES',
  ItEntityTypeConstants.ITALIAN_FREELANCE_WORKERS_PROFESSIONALS:
      'ITALIAN_FREELANCE_WORKERS_PROFESSIONALS',
  ItEntityTypeConstants.ITALIAN_NON_PROFIT_ORGANIZATIONS:
      'ITALIAN_NON_PROFIT_ORGANIZATIONS',
  ItEntityTypeConstants.ITALIAN_PUBLIC_ORGANIZATIONS:
      'ITALIAN_PUBLIC_ORGANIZATIONS',
  ItEntityTypeConstants.ITALIAN_OTHER_SUBJECTS: 'ITALIAN_OTHER_SUBJECTS',
  ItEntityTypeConstants.FOREIGN_NON_NATURAL_PERSONS:
      'FOREIGN_NON_NATURAL_PERSONS',
};
