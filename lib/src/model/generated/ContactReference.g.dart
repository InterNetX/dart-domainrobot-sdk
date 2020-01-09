// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContactReference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactReference _$ContactReferenceFromJson(Map<String, dynamic> json) {
  return ContactReference(
    nic: json['nic'] == null
        ? null
        : NicMember.fromJson(json['nic'] as Map<String, dynamic>),
    status: _$enumDecodeNullable(_$ObjectStatusEnumMap, json['status']),
    type: _$enumDecodeNullable(_$ContactReferenceTypeEnumMap, json['type']),
    role: _$enumDecodeNullable(_$ContactReferenceTypeEnumMap, json['role']),
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$ContactReferenceToJson(ContactReference instance) =>
    <String, dynamic>{
      'nic': instance.nic,
      'status': _$ObjectStatusEnumMap[instance.status],
      'type': _$ContactReferenceTypeEnumMap[instance.type],
      'role': _$ContactReferenceTypeEnumMap[instance.role],
      'name': instance.name,
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

const _$ObjectStatusEnumMap = {
  ObjectStatus.SPOOL: 'SPOOL',
  ObjectStatus.REQUEST: 'REQUEST',
  ObjectStatus.PENDING_NOTIFY: 'PENDING_NOTIFY',
  ObjectStatus.PENDING: 'PENDING',
  ObjectStatus.FAILED: 'FAILED',
  ObjectStatus.SUCCESS: 'SUCCESS',
  ObjectStatus.PENDING_DOMAIN: 'PENDING_DOMAIN',
  ObjectStatus.CONNECT: 'CONNECT',
};

const _$ContactReferenceTypeEnumMap = {
  ContactReferenceType.ALL: 'ALL',
  ContactReferenceType.OWNERC: 'OWNERC',
  ContactReferenceType.ADMINC: 'ADMINC',
  ContactReferenceType.TECHC: 'TECHC',
  ContactReferenceType.ZONEC: 'ZONEC',
  ContactReferenceType.BILLINGC: 'BILLINGC',
};
