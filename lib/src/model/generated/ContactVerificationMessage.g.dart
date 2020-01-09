// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContactVerificationMessage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactVerificationMessage _$ContactVerificationMessageFromJson(
    Map<String, dynamic> json) {
  return ContactVerificationMessage(
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    updated: json['updated'] == null
        ? null
        : DateTime.parse(json['updated'] as String),
    mail: json['mail'] == null
        ? null
        : Message.fromJson(json['mail'] as Map<String, dynamic>),
    status:
        _$enumDecodeNullable(_$GenericStatusConstantsEnumMap, json['status']),
  );
}

Map<String, dynamic> _$ContactVerificationMessageToJson(
        ContactVerificationMessage instance) =>
    <String, dynamic>{
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'mail': instance.mail,
      'status': _$GenericStatusConstantsEnumMap[instance.status],
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

const _$GenericStatusConstantsEnumMap = {
  GenericStatusConstants.PENDING: 'PENDING',
  GenericStatusConstants.SUCCESS: 'SUCCESS',
  GenericStatusConstants.FAILED: 'FAILED',
  GenericStatusConstants.NOT_SET: 'NOT_SET',
};
