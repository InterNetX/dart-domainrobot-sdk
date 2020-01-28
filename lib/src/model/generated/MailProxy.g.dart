// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MailProxy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MailProxy _$MailProxyFromJson(Map<String, dynamic> json) {
  return MailProxy(
    domain: json['domain'] as String,
    idn: json['idn'] as String,
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
    target: json['target'] as String,
    admin: json['admin'] as String,
    protection:
        _$enumDecodeNullable(_$ProtectionConstantsEnumMap, json['protection']),
    greylisting: json['greylisting'] as bool,
    virus: json['virus'] as String,
    bannedFiles: json['bannedFiles'] as String,
    header: json['header'] as String,
    spam: json['spam'] == null
        ? null
        : SpamPolicy.fromJson(json['spam'] as Map<String, dynamic>),
    whitelist: json['whitelist'] == null
        ? null
        : MailList.fromJson(json['whitelist'] as Map<String, dynamic>),
    blacklist: json['blacklist'] == null
        ? null
        : MailList.fromJson(json['blacklist'] as Map<String, dynamic>),
    excludelist: json['excludelist'] == null
        ? null
        : MailList.fromJson(json['excludelist'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MailProxyToJson(MailProxy instance) => <String, dynamic>{
      'domain': instance.domain,
      'idn': instance.idn,
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'owner': instance.owner,
      'updater': instance.updater,
      'target': instance.target,
      'admin': instance.admin,
      'protection': _$ProtectionConstantsEnumMap[instance.protection],
      'greylisting': instance.greylisting,
      'virus': instance.virus,
      'bannedFiles': instance.bannedFiles,
      'header': instance.header,
      'spam': instance.spam,
      'whitelist': instance.whitelist,
      'blacklist': instance.blacklist,
      'excludelist': instance.excludelist,
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

const _$ProtectionConstantsEnumMap = {
  ProtectionConstants.HIGH: 'HIGH',
  ProtectionConstants.MEDIUM: 'MEDIUM',
  ProtectionConstants.LOW: 'LOW',
  ProtectionConstants.OFF: 'OFF',
  ProtectionConstants.CUSTOM: 'CUSTOM',
};
