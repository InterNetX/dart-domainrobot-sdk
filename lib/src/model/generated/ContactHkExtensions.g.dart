// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContactHkExtensions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactHkExtensions _$ContactHkExtensionsFromJson(Map<String, dynamic> json) {
  return ContactHkExtensions(
    documentType: _$enumDecodeNullable(
        _$HkDocumentTypeConstantsEnumMap, json['documentType']),
    others: json['others'] as String,
    documentNumber: json['documentNumber'] as String,
    documentOrigin: json['documentOrigin'] as String,
    above18: json['above18'] as bool,
    industryType: json['industryType'] as String,
  );
}

Map<String, dynamic> _$ContactHkExtensionsToJson(
        ContactHkExtensions instance) =>
    <String, dynamic>{
      'documentType': _$HkDocumentTypeConstantsEnumMap[instance.documentType],
      'others': instance.others,
      'documentNumber': instance.documentNumber,
      'documentOrigin': instance.documentOrigin,
      'above18': instance.above18,
      'industryType': instance.industryType,
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

const _$HkDocumentTypeConstantsEnumMap = {
  HkDocumentTypeConstants.HKID: 'HKID',
  HkDocumentTypeConstants.OTHID: 'OTHID',
  HkDocumentTypeConstants.PASSNO: 'PASSNO',
  HkDocumentTypeConstants.BIRTHCERT: 'BIRTHCERT',
  HkDocumentTypeConstants.OTHIDV: 'OTHIDV',
  HkDocumentTypeConstants.BR: 'BR',
  HkDocumentTypeConstants.CI: 'CI',
  HkDocumentTypeConstants.CRS: 'CRS',
  HkDocumentTypeConstants.HKSARG: 'HKSARG',
  HkDocumentTypeConstants.HKORDINANCE: 'HKORDINANCE',
  HkDocumentTypeConstants.OTHORG: 'OTHORG',
};
