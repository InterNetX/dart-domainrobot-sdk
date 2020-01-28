// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContactGeneralExtensions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactGeneralExtensions _$ContactGeneralExtensionsFromJson(
    Map<String, dynamic> json) {
  return ContactGeneralExtensions(
    birth: json['birth'] == null
        ? null
        : ContactBirthExtensions.fromJson(
            json['birth'] as Map<String, dynamic>),
    trademark: json['trademark'] == null
        ? null
        : ContactTrademarkExtensions.fromJson(
            json['trademark'] as Map<String, dynamic>),
    identification: json['identification'] == null
        ? null
        : ContactIdentificationExtensions.fromJson(
            json['identification'] as Map<String, dynamic>),
    language: json['language'] as String,
    companyNumber: json['companyNumber'] as String,
    gender: _$enumDecodeNullable(_$GenderConstantsEnumMap, json['gender']),
    vatNumber: json['vatNumber'] as String,
    citizenship: json['citizenship'] as String,
    mobilePhone: json['mobilePhone'] as String,
  );
}

Map<String, dynamic> _$ContactGeneralExtensionsToJson(
        ContactGeneralExtensions instance) =>
    <String, dynamic>{
      'birth': instance.birth,
      'trademark': instance.trademark,
      'identification': instance.identification,
      'language': instance.language,
      'companyNumber': instance.companyNumber,
      'gender': _$GenderConstantsEnumMap[instance.gender],
      'vatNumber': instance.vatNumber,
      'citizenship': instance.citizenship,
      'mobilePhone': instance.mobilePhone,
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

const _$GenderConstantsEnumMap = {
  GenderConstants.MALE: 'MALE',
  GenderConstants.FEMALE: 'FEMALE',
};
