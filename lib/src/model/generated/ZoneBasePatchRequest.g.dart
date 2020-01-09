// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ZoneBasePatchRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ZoneBasePatchRequest _$ZoneBasePatchRequestFromJson(Map<String, dynamic> json) {
  return ZoneBasePatchRequest(
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    updated: json['updated'] == null
        ? null
        : DateTime.parse(json['updated'] as String),
    origin: json['origin'] as String,
    idn: json['idn'] as String,
    soa: json['soa'] == null
        ? null
        : Soa.fromJson(json['soa'] as Map<String, dynamic>),
    dnssec: json['dnssec'] as bool,
    nameServerGroup: json['nameServerGroup'] as String,
    allowTransfer: json['allowTransfer'] as bool,
    owner: json['owner'] == null
        ? null
        : BasicUser.fromJson(json['owner'] as Map<String, dynamic>),
    updater: json['updater'] == null
        ? null
        : BasicUser.fromJson(json['updater'] as Map<String, dynamic>),
    logId: json['logId'] as int,
    comment: json['comment'] as String,
    domainsafe: json['domainsafe'] as bool,
    source: json['source'] as String,
    sourceVirtualHostname: json['sourceVirtualHostname'] as String,
    zoneGrantsAdd:
        (json['zoneGrantsAdd'] as List)?.map((e) => e as String)?.toList(),
    zoneGrantsRem:
        (json['zoneGrantsRem'] as List)?.map((e) => e as String)?.toList(),
    nameServers: (json['nameServers'] as List)
        ?.map((e) =>
            e == null ? null : NameServer.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    main: json['main'] == null
        ? null
        : MainIp.fromJson(json['main'] as Map<String, dynamic>),
    wwwInclude: json['wwwInclude'] as bool,
    virtualNameServer: json['virtualNameServer'] as String,
    freeText: (json['freeText'] as List)?.map((e) => e as String)?.toList(),
    action: _$enumDecodeNullable(
        _$NameserverActionConstantsEnumMap, json['action']),
    grants: (json['grants'] as List)?.map((e) => e as String)?.toList(),
    resourceRecords: (json['resourceRecords'] as List)
        ?.map((e) => e == null
            ? null
            : ResourceRecord.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    roid: json['roid'] as int,
    resourceRecordsAdd: (json['resourceRecordsAdd'] as List)
        ?.map((e) => e == null
            ? null
            : ResourceRecord.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    resourceRecordsRem: (json['resourceRecordsRem'] as List)
        ?.map((e) => e == null
            ? null
            : ResourceRecord.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ZoneBasePatchRequestToJson(
        ZoneBasePatchRequest instance) =>
    <String, dynamic>{
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'origin': instance.origin,
      'idn': instance.idn,
      'soa': instance.soa,
      'dnssec': instance.dnssec,
      'nameServerGroup': instance.nameServerGroup,
      'allowTransfer': instance.allowTransfer,
      'owner': instance.owner,
      'updater': instance.updater,
      'logId': instance.logId,
      'comment': instance.comment,
      'domainsafe': instance.domainsafe,
      'source': instance.source,
      'sourceVirtualHostname': instance.sourceVirtualHostname,
      'zoneGrantsAdd': instance.zoneGrantsAdd,
      'zoneGrantsRem': instance.zoneGrantsRem,
      'nameServers': instance.nameServers,
      'main': instance.main,
      'wwwInclude': instance.wwwInclude,
      'virtualNameServer': instance.virtualNameServer,
      'freeText': instance.freeText,
      'action': _$NameserverActionConstantsEnumMap[instance.action],
      'grants': instance.grants,
      'resourceRecords': instance.resourceRecords,
      'roid': instance.roid,
      'resourceRecordsAdd': instance.resourceRecordsAdd,
      'resourceRecordsRem': instance.resourceRecordsRem,
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

const _$NameserverActionConstantsEnumMap = {
  NameserverActionConstants.PRIMARY: 'PRIMARY',
  NameserverActionConstants.SECONDARY: 'SECONDARY',
  NameserverActionConstants.COMPLETE: 'COMPLETE',
  NameserverActionConstants.HIDDEN: 'HIDDEN',
  NameserverActionConstants.NONE: 'NONE',
  NameserverActionConstants.AUTO: 'AUTO',
};
