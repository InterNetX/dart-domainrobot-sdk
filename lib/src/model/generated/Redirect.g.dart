// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Redirect.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Redirect _$RedirectFromJson(Map<String, dynamic> json) {
  return Redirect(
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
    source: json['source'] as String,
    target: json['target'] as String,
    type: _$enumDecodeNullable(_$RedirectTypeConstantsEnumMap, json['type']),
    mode: _$enumDecodeNullable(_$RedirectModeConstantsEnumMap, json['mode']),
    domain: json['domain'] as String,
    title: json['title'] as String,
    backups: (json['backups'] as List)?.map((e) => e as String)?.toList(),
    sourceIdn: json['sourceIdn'] as String,
    targetIdn: json['targetIdn'] as String,
    lastSeen: json['lastSeen'] == null
        ? null
        : DateTime.parse(json['lastSeen'] as String),
  );
}

Map<String, dynamic> _$RedirectToJson(Redirect instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('created', instance.created?.toIso8601String());
  writeNotNull('updated', instance.updated?.toIso8601String());
  writeNotNull('owner', instance.owner?.toJson());
  writeNotNull('updater', instance.updater?.toJson());
  writeNotNull('source', instance.source);
  writeNotNull('target', instance.target);
  writeNotNull('type', _$RedirectTypeConstantsEnumMap[instance.type]);
  writeNotNull('mode', _$RedirectModeConstantsEnumMap[instance.mode]);
  writeNotNull('domain', instance.domain);
  writeNotNull('title', instance.title);
  writeNotNull('backups', instance.backups);
  writeNotNull('sourceIdn', instance.sourceIdn);
  writeNotNull('targetIdn', instance.targetIdn);
  writeNotNull('lastSeen', instance.lastSeen?.toIso8601String());
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

const _$RedirectTypeConstantsEnumMap = {
  RedirectTypeConstants.DOMAIN: 'DOMAIN',
  RedirectTypeConstants.EMAIL: 'EMAIL',
};

const _$RedirectModeConstantsEnumMap = {
  RedirectModeConstants.CATCHALL: 'CATCHALL',
  RedirectModeConstants.FRAME: 'FRAME',
  RedirectModeConstants.HTTP: 'HTTP',
  RedirectModeConstants.SINGLE: 'SINGLE',
  RedirectModeConstants.HTTPS: 'HTTPS',
};
