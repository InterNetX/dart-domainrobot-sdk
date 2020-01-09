// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ExtendedValidationExtension.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExtendedValidationExtension _$ExtendedValidationExtensionFromJson(
    Map<String, dynamic> json) {
  return ExtendedValidationExtension(
    joiCountryName: json['joiCountryName'] as String,
    companyNumber: json['companyNumber'] as String,
    businessCategory: _$enumDecodeNullable(
        _$BusinessCategoryEnumMap, json['businessCategory']),
  );
}

Map<String, dynamic> _$ExtendedValidationExtensionToJson(
        ExtendedValidationExtension instance) =>
    <String, dynamic>{
      'joiCountryName': instance.joiCountryName,
      'companyNumber': instance.companyNumber,
      'businessCategory': _$BusinessCategoryEnumMap[instance.businessCategory],
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

const _$BusinessCategoryEnumMap = {
  BusinessCategory.PRIVATE_ORGANIZATION: 'PRIVATE_ORGANIZATION',
  BusinessCategory.GOVERNMENT_ENTITY: 'GOVERNMENT_ENTITY',
  BusinessCategory.BUSINESS_ENTITY: 'BUSINESS_ENTITY',
};
