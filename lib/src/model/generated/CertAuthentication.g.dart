// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CertAuthentication.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CertAuthentication _$CertAuthenticationFromJson(Map<String, dynamic> json) {
  return CertAuthentication(
    name: json['name'] as String,
    method: _$enumDecodeNullable(_$AuthMethodConstantsEnumMap, json['method']),
    dns: json['dns'] as String,
    fileName: json['fileName'] as String,
    fileContent: json['fileContent'] as String,
    approverEmails:
        (json['approverEmails'] as List)?.map((e) => e as String)?.toList(),
    provisioning: json['provisioning'] as bool,
  );
}

Map<String, dynamic> _$CertAuthenticationToJson(CertAuthentication instance) =>
    <String, dynamic>{
      'name': instance.name,
      'method': _$AuthMethodConstantsEnumMap[instance.method],
      'dns': instance.dns,
      'fileName': instance.fileName,
      'fileContent': instance.fileContent,
      'approverEmails': instance.approverEmails,
      'provisioning': instance.provisioning,
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

const _$AuthMethodConstantsEnumMap = {
  AuthMethodConstants.DNS: 'DNS',
  AuthMethodConstants.EMAIL: 'EMAIL',
  AuthMethodConstants.FILE: 'FILE',
  AuthMethodConstants.ORG: 'ORG',
};
