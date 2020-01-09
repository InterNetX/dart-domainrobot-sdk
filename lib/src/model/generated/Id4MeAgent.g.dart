// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Id4MeAgent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Id4MeAgent _$Id4MeAgentFromJson(Map<String, dynamic> json) {
  return Id4MeAgent(
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    updated: json['updated'] == null
        ? null
        : DateTime.parse(json['updated'] as String),
    owner: json['owner'] == null
        ? null
        : BasicUser.fromJson(json['owner'] as Map<String, dynamic>),
    updater: json['updater'] == null
        ? null
        : BasicUser.fromJson(json['updater'] as Map<String, dynamic>),
    externalReference: json['externalReference'] as String,
    certificate: json['certificate'] == null
        ? null
        : VhostCertificate.fromJson(
            json['certificate'] as Map<String, dynamic>),
    layoutAddon: json['layoutAddon'] == null
        ? null
        : Configuration.fromJson(json['layoutAddon'] as Map<String, dynamic>),
    name: json['name'] as String,
    status: _$enumDecodeNullable(_$Id4MeAgentStatusEnumMap, json['status']),
    records: (json['records'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$Id4MeAgentToJson(Id4MeAgent instance) =>
    <String, dynamic>{
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'owner': instance.owner,
      'updater': instance.updater,
      'externalReference': instance.externalReference,
      'certificate': instance.certificate,
      'layoutAddon': instance.layoutAddon,
      'name': instance.name,
      'status': _$Id4MeAgentStatusEnumMap[instance.status],
      'records': instance.records,
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

const _$Id4MeAgentStatusEnumMap = {
  Id4MeAgentStatus.PENDING: 'PENDING',
  Id4MeAgentStatus.PENDING_SSL: 'PENDING_SSL',
  Id4MeAgentStatus.PENDING_SSL_VERIFY: 'PENDING_SSL_VERIFY',
  Id4MeAgentStatus.SUCCESS: 'SUCCESS',
  Id4MeAgentStatus.FAILED: 'FAILED',
};
