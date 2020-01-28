// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Id4meIdentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Id4meIdentity _$Id4meIdentityFromJson(Map<String, dynamic> json) {
  return Id4meIdentity(
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
    agent: json['agent'] == null
        ? null
        : Id4MeAgent.fromJson(json['agent'] as Map<String, dynamic>),
    verifyExpire: json['verifyExpire'] == null
        ? null
        : DateTime.parse(json['verifyExpire'] as String),
    addons: json['addons'] == null
        ? null
        : Configuration.fromJson(json['addons'] as Map<String, dynamic>),
    magicLink: json['magicLink'] as String,
    claims: json['claims'] == null
        ? null
        : Claims.fromJson(json['claims'] as Map<String, dynamic>),
    showClaims: json['showClaims'] as bool,
    resetUrl: json['resetUrl'] as String,
    resetUrlExpire: json['resetUrlExpire'] == null
        ? null
        : DateTime.parse(json['resetUrlExpire'] as String),
    name: json['name'] as String,
    status: _$enumDecodeNullable(_$IdentityStatusEnumMap, json['status']),
    language: json['language'] as String,
    record: (json['record'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$Id4meIdentityToJson(Id4meIdentity instance) =>
    <String, dynamic>{
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'owner': instance.owner,
      'updater': instance.updater,
      'agent': instance.agent,
      'verifyExpire': instance.verifyExpire?.toIso8601String(),
      'addons': instance.addons,
      'magicLink': instance.magicLink,
      'claims': instance.claims,
      'showClaims': instance.showClaims,
      'resetUrl': instance.resetUrl,
      'resetUrlExpire': instance.resetUrlExpire?.toIso8601String(),
      'name': instance.name,
      'status': _$IdentityStatusEnumMap[instance.status],
      'language': instance.language,
      'record': instance.record,
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

const _$IdentityStatusEnumMap = {
  IdentityStatus.VERIFY: 'VERIFY',
  IdentityStatus.SUCCESS: 'SUCCESS',
};
