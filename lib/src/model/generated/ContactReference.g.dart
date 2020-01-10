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

Map<String, dynamic> _$ContactReferenceToJson(ContactReference instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('nic', instance.nic?.toJson());
  writeNotNull('status', _$ObjectStatusEnumMap[instance.status]);
  writeNotNull('type', _$ContactReferenceTypeEnumMap[instance.type]);
  writeNotNull('role', _$ContactReferenceTypeEnumMap[instance.role]);
  writeNotNull('name', instance.name);
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
