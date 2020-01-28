// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DomainPrereg.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DomainPrereg _$DomainPreregFromJson(Map<String, dynamic> json) {
  return DomainPrereg(
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
    ownerc: json['ownerc'] == null
        ? null
        : Contact.fromJson(json['ownerc'] as Map<String, dynamic>),
    adminc: json['adminc'] == null
        ? null
        : Contact.fromJson(json['adminc'] as Map<String, dynamic>),
    techc: json['techc'] == null
        ? null
        : Contact.fromJson(json['techc'] as Map<String, dynamic>),
    zonec: json['zonec'] == null
        ? null
        : Contact.fromJson(json['zonec'] as Map<String, dynamic>),
    name: json['name'] as String,
    authinfo: json['authinfo'] as String,
    nameServers: (json['nameServers'] as List)
        ?.map((e) =>
            e == null ? null : NameServer.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    nameServerEntries:
        (json['nameServerEntries'] as List)?.map((e) => e as String)?.toList(),
    status: _$enumDecodeNullable(
        _$DomainPreregStatusConstantsEnumMap, json['status']),
    extension: json['extension'] == null
        ? null
        : DomainPreregAddon.fromJson(json['extension'] as Map<String, dynamic>),
    orderReference: json['orderReference'] as String,
    tmchMark: json['tmchMark'] == null
        ? null
        : TmchMark.fromJson(json['tmchMark'] as Map<String, dynamic>),
    preregConfig: json['preregConfig'] == null
        ? null
        : PreregConfig.fromJson(json['preregConfig'] as Map<String, dynamic>),
    idn: json['idn'] as String,
    confirmed: json['confirmed'] == null
        ? null
        : DateTime.parse(json['confirmed'] as String),
    trustee: json['trustee'] as bool,
    domainCreated: json['domainCreated'] == null
        ? null
        : DateTime.parse(json['domainCreated'] as String),
    domainExpire: json['domainExpire'] == null
        ? null
        : DateTime.parse(json['domainExpire'] as String),
    registryStatus: _$enumDecodeNullable(
        _$RegistryStatusConstantsEnumMap, json['registryStatus']),
    recommended: json['recommended'] as bool,
  );
}

Map<String, dynamic> _$DomainPreregToJson(DomainPrereg instance) =>
    <String, dynamic>{
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'owner': instance.owner,
      'updater': instance.updater,
      'ownerc': instance.ownerc,
      'adminc': instance.adminc,
      'techc': instance.techc,
      'zonec': instance.zonec,
      'name': instance.name,
      'authinfo': instance.authinfo,
      'nameServers': instance.nameServers,
      'nameServerEntries': instance.nameServerEntries,
      'status': _$DomainPreregStatusConstantsEnumMap[instance.status],
      'extension': instance.extension,
      'orderReference': instance.orderReference,
      'tmchMark': instance.tmchMark,
      'preregConfig': instance.preregConfig,
      'idn': instance.idn,
      'confirmed': instance.confirmed?.toIso8601String(),
      'trustee': instance.trustee,
      'domainCreated': instance.domainCreated?.toIso8601String(),
      'domainExpire': instance.domainExpire?.toIso8601String(),
      'registryStatus':
          _$RegistryStatusConstantsEnumMap[instance.registryStatus],
      'recommended': instance.recommended,
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

const _$DomainPreregStatusConstantsEnumMap = {
  DomainPreregStatusConstants.PENDING: 'PENDING',
  DomainPreregStatusConstants.PENDING_SENT: 'PENDING_SENT',
  DomainPreregStatusConstants.PENDING_DOCUMENT_SENT: 'PENDING_DOCUMENT_SENT',
  DomainPreregStatusConstants.PENDING_PROGRESS: 'PENDING_PROGRESS',
  DomainPreregStatusConstants.PENDING_UPDATE: 'PENDING_UPDATE',
  DomainPreregStatusConstants.PENDING_SENT_UPDATE: 'PENDING_SENT_UPDATE',
  DomainPreregStatusConstants.TIMEOUT: 'TIMEOUT',
  DomainPreregStatusConstants.ACCEPT: 'ACCEPT',
  DomainPreregStatusConstants.DECLINE: 'DECLINE',
  DomainPreregStatusConstants.INVALID_NAME: 'INVALID_NAME',
  DomainPreregStatusConstants.FAILED: 'FAILED',
  DomainPreregStatusConstants.CANCEL: 'CANCEL',
  DomainPreregStatusConstants.AUTO_CANCEL: 'AUTO_CANCEL',
  DomainPreregStatusConstants.ACTIVE: 'ACTIVE',
  DomainPreregStatusConstants.SENT: 'SENT',
  DomainPreregStatusConstants.OPEN: 'OPEN',
  DomainPreregStatusConstants.TMCH_CLAIM: 'TMCH_CLAIM',
  DomainPreregStatusConstants.TMCH_CLAIM_CONFIRMED: 'TMCH_CLAIM_CONFIRMED',
  DomainPreregStatusConstants.TMCH_CLAIM_REJECTED: 'TMCH_CLAIM_REJECTED',
  DomainPreregStatusConstants.TMCH_CLAIM_EXPIRED: 'TMCH_CLAIM_EXPIRED',
  DomainPreregStatusConstants.TMCH_CLAIM_PENDING: 'TMCH_CLAIM_PENDING',
  DomainPreregStatusConstants.TMCH_CLAIM_FAILED: 'TMCH_CLAIM_FAILED',
  DomainPreregStatusConstants.FAILED_REF: 'FAILED_REF',
};

const _$RegistryStatusConstantsEnumMap = {
  RegistryStatusConstants.ACTIVE: 'ACTIVE',
  RegistryStatusConstants.HOLD: 'HOLD',
  RegistryStatusConstants.LOCK: 'LOCK',
  RegistryStatusConstants.HOLD_LOCK: 'HOLD_LOCK',
  RegistryStatusConstants.AUTO: 'AUTO',
  RegistryStatusConstants.LOCK_OWNER: 'LOCK_OWNER',
  RegistryStatusConstants.LOCK_UPDATE: 'LOCK_UPDATE',
  RegistryStatusConstants.PENDING: 'PENDING',
  RegistryStatusConstants.NONE: 'NONE',
};
