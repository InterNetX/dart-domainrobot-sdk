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

Map<String, dynamic> _$MailProxyToJson(MailProxy instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('domain', instance.domain);
  writeNotNull('idn', instance.idn);
  writeNotNull('created', instance.created?.toIso8601String());
  writeNotNull('updated', instance.updated?.toIso8601String());
  writeNotNull('owner', instance.owner?.toJson());
  writeNotNull('updater', instance.updater?.toJson());
  writeNotNull('target', instance.target);
  writeNotNull('admin', instance.admin);
  writeNotNull('protection', _$ProtectionConstantsEnumMap[instance.protection]);
  writeNotNull('greylisting', instance.greylisting);
  writeNotNull('virus', instance.virus);
  writeNotNull('bannedFiles', instance.bannedFiles);
  writeNotNull('header', instance.header);
  writeNotNull('spam', instance.spam?.toJson());
  writeNotNull('whitelist', instance.whitelist?.toJson());
  writeNotNull('blacklist', instance.blacklist?.toJson());
  writeNotNull('excludelist', instance.excludelist?.toJson());
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

const _$ProtectionConstantsEnumMap = {
  ProtectionConstants.HIGH: 'HIGH',
  ProtectionConstants.MEDIUM: 'MEDIUM',
  ProtectionConstants.LOW: 'LOW',
  ProtectionConstants.OFF: 'OFF',
  ProtectionConstants.CUSTOM: 'CUSTOM',
};
