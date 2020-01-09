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

Map<String, dynamic> _$RedirectToJson(Redirect instance) => <String, dynamic>{
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'owner': instance.owner,
      'updater': instance.updater,
      'source': instance.source,
      'target': instance.target,
      'type': _$RedirectTypeConstantsEnumMap[instance.type],
      'mode': _$RedirectModeConstantsEnumMap[instance.mode],
      'domain': instance.domain,
      'title': instance.title,
      'backups': instance.backups,
      'sourceIdn': instance.sourceIdn,
      'targetIdn': instance.targetIdn,
      'lastSeen': instance.lastSeen?.toIso8601String(),
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
