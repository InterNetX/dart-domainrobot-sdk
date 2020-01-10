// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Zone.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Zone _$ZoneFromJson(Map<String, dynamic> json) {
  return Zone(
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
  );
}

Map<String, dynamic> _$ZoneToJson(Zone instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('created', instance.created?.toIso8601String());
  writeNotNull('updated', instance.updated?.toIso8601String());
  writeNotNull('origin', instance.origin);
  writeNotNull('idn', instance.idn);
  writeNotNull('soa', instance.soa?.toJson());
  writeNotNull('dnssec', instance.dnssec);
  writeNotNull('nameServerGroup', instance.nameServerGroup);
  writeNotNull('allowTransfer', instance.allowTransfer);
  writeNotNull('owner', instance.owner?.toJson());
  writeNotNull('updater', instance.updater?.toJson());
  writeNotNull('logId', instance.logId);
  writeNotNull('comment', instance.comment);
  writeNotNull('domainsafe', instance.domainsafe);
  writeNotNull('source', instance.source);
  writeNotNull('sourceVirtualHostname', instance.sourceVirtualHostname);
  writeNotNull(
      'nameServers', instance.nameServers?.map((e) => e?.toJson())?.toList());
  writeNotNull('main', instance.main?.toJson());
  writeNotNull('wwwInclude', instance.wwwInclude);
  writeNotNull('virtualNameServer', instance.virtualNameServer);
  writeNotNull('freeText', instance.freeText);
  writeNotNull('action', _$NameserverActionConstantsEnumMap[instance.action]);
  writeNotNull('grants', instance.grants);
  writeNotNull('resourceRecords',
      instance.resourceRecords?.map((e) => e?.toJson())?.toList());
  writeNotNull('roid', instance.roid);
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

const _$NameserverActionConstantsEnumMap = {
  NameserverActionConstants.PRIMARY: 'PRIMARY',
  NameserverActionConstants.SECONDARY: 'SECONDARY',
  NameserverActionConstants.COMPLETE: 'COMPLETE',
  NameserverActionConstants.HIDDEN: 'HIDDEN',
  NameserverActionConstants.NONE: 'NONE',
  NameserverActionConstants.AUTO: 'AUTO',
};
