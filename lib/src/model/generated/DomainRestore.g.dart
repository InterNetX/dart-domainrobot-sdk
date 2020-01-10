// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DomainRestore.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DomainRestore _$DomainRestoreFromJson(Map<String, dynamic> json) {
  return DomainRestore(
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
    name: json['name'] as String,
    idn: json['idn'] as String,
    nicMemberLabel: json['nicMemberLabel'] as String,
    registryStatus: _$enumDecodeNullable(
        _$RegistryStatusConstantsEnumMap, json['registryStatus']),
    nameServers: (json['nameServers'] as List)
        ?.map((e) =>
            e == null ? null : NameServer.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    nameServerEntries:
        (json['nameServerEntries'] as List)?.map((e) => e as String)?.toList(),
    period: json['period'] == null
        ? null
        : TimePeriod.fromJson(json['period'] as Map<String, dynamic>),
    trustee: json['trustee'] as bool,
    privacy: json['privacy'] as bool,
    authinfo: json['authinfo'] as String,
    domainsafe: json['domainsafe'] as bool,
    parking: _$enumDecodeNullable(
        _$ParkingProviderConstantsEnumMap, json['parking']),
    extensions: json['extensions'] == null
        ? null
        : DomainExtensions.fromJson(json['extensions'] as Map<String, dynamic>),
    logId: json['logId'] as int,
    nsCheck: _$enumDecodeNullable(_$DNSCheckEnumMap, json['nsCheck']),
    confirmOrder: json['confirmOrder'] as bool,
    confirmOwnerConsent: json['confirmOwnerConsent'] as bool,
    ignoreWhois: json['ignoreWhois'] as bool,
    comment: json['comment'] as String,
    includeWWW: json['includeWWW'] as bool,
    includeWildcard: json['includeWildcard'] as bool,
    registrarStatus: _$enumDecodeNullable(
        _$RegistryStatusConstantsEnumMap, json['registrarStatus']),
    registrarStatusReason: json['registrarStatusReason'] as String,
    removeCancelation: json['removeCancelation'] as bool,
    autodnsSecJob: json['autodnsSecJob'] == null
        ? null
        : DNSSecJob.fromJson(json['autodnsSecJob'] as Map<String, dynamic>),
    priceClass: json['priceClass'] as String,
    priceClassRenew: json['priceClassRenew'] as String,
    abuseEmail: json['abuseEmail'] as String,
    generalRequestEmail: json['generalRequestEmail'] as String,
    privacyPlusMail: json['privacyPlusMail'] as String,
    privacyPlus: json['privacyPlus'] as bool,
    nameServerGroup: json['nameServerGroup'] as String,
    rddsOptIn:
        _$enumDecodeNullable(_$RddsOptInConstantsEnumMap, json['rddsOptIn']),
    servicesAdd: json['servicesAdd'] == null
        ? null
        : DomainServices.fromJson(json['servicesAdd'] as Map<String, dynamic>),
    servicesRem: json['servicesRem'] == null
        ? null
        : DomainServices.fromJson(json['servicesRem'] as Map<String, dynamic>),
    deleted: json['deleted'] == null
        ? null
        : DateTime.parse(json['deleted'] as String),
    restorePhaseEnd: json['restorePhaseEnd'] == null
        ? null
        : DateTime.parse(json['restorePhaseEnd'] as String),
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
    expire: json['expire'] == null
        ? null
        : DateTime.parse(json['expire'] as String),
    payable: json['payable'] == null
        ? null
        : DateTime.parse(json['payable'] as String),
    action:
        _$enumDecodeNullable(_$DomainActionConstantsEnumMap, json['action']),
    autoDnssec: json['autoDnssec'] as bool,
    dnssec: json['dnssec'] as bool,
    validCertificate: json['validCertificate'] as bool,
    cancelationStatus: _$enumDecodeNullable(
        _$CancelationStatusConstantsEnumMap, json['cancelationStatus']),
    autoRenewStatus: _$enumDecodeNullable(
        _$AutoRenewStatusConstantsEnumMap, json['autoRenewStatus']),
    dnssecData: (json['dnssecData'] as List)
        ?.map((e) =>
            e == null ? null : DNSSec.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    zone: json['zone'] == null
        ? null
        : Zone.fromJson(json['zone'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DomainRestoreToJson(DomainRestore instance) {
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
  writeNotNull('name', instance.name);
  writeNotNull('idn', instance.idn);
  writeNotNull('nicMemberLabel', instance.nicMemberLabel);
  writeNotNull('registryStatus',
      _$RegistryStatusConstantsEnumMap[instance.registryStatus]);
  writeNotNull(
      'nameServers', instance.nameServers?.map((e) => e?.toJson())?.toList());
  writeNotNull('nameServerEntries', instance.nameServerEntries);
  writeNotNull('period', instance.period?.toJson());
  writeNotNull('trustee', instance.trustee);
  writeNotNull('privacy', instance.privacy);
  writeNotNull('authinfo', instance.authinfo);
  writeNotNull('domainsafe', instance.domainsafe);
  writeNotNull('parking', _$ParkingProviderConstantsEnumMap[instance.parking]);
  writeNotNull('extensions', instance.extensions?.toJson());
  writeNotNull('logId', instance.logId);
  writeNotNull('nsCheck', _$DNSCheckEnumMap[instance.nsCheck]);
  writeNotNull('confirmOrder', instance.confirmOrder);
  writeNotNull('confirmOwnerConsent', instance.confirmOwnerConsent);
  writeNotNull('ignoreWhois', instance.ignoreWhois);
  writeNotNull('comment', instance.comment);
  writeNotNull('includeWWW', instance.includeWWW);
  writeNotNull('includeWildcard', instance.includeWildcard);
  writeNotNull('registrarStatus',
      _$RegistryStatusConstantsEnumMap[instance.registrarStatus]);
  writeNotNull('registrarStatusReason', instance.registrarStatusReason);
  writeNotNull('removeCancelation', instance.removeCancelation);
  writeNotNull('autodnsSecJob', instance.autodnsSecJob?.toJson());
  writeNotNull('priceClass', instance.priceClass);
  writeNotNull('priceClassRenew', instance.priceClassRenew);
  writeNotNull('abuseEmail', instance.abuseEmail);
  writeNotNull('generalRequestEmail', instance.generalRequestEmail);
  writeNotNull('privacyPlusMail', instance.privacyPlusMail);
  writeNotNull('privacyPlus', instance.privacyPlus);
  writeNotNull('nameServerGroup', instance.nameServerGroup);
  writeNotNull('rddsOptIn', _$RddsOptInConstantsEnumMap[instance.rddsOptIn]);
  writeNotNull('servicesAdd', instance.servicesAdd?.toJson());
  writeNotNull('servicesRem', instance.servicesRem?.toJson());
  writeNotNull('deleted', instance.deleted?.toIso8601String());
  writeNotNull('restorePhaseEnd', instance.restorePhaseEnd?.toIso8601String());
  writeNotNull('ownerc', instance.ownerc?.toJson());
  writeNotNull('adminc', instance.adminc?.toJson());
  writeNotNull('techc', instance.techc?.toJson());
  writeNotNull('zonec', instance.zonec?.toJson());
  writeNotNull('expire', instance.expire?.toIso8601String());
  writeNotNull('payable', instance.payable?.toIso8601String());
  writeNotNull('action', _$DomainActionConstantsEnumMap[instance.action]);
  writeNotNull('autoDnssec', instance.autoDnssec);
  writeNotNull('dnssec', instance.dnssec);
  writeNotNull('validCertificate', instance.validCertificate);
  writeNotNull('cancelationStatus',
      _$CancelationStatusConstantsEnumMap[instance.cancelationStatus]);
  writeNotNull('autoRenewStatus',
      _$AutoRenewStatusConstantsEnumMap[instance.autoRenewStatus]);
  writeNotNull(
      'dnssecData', instance.dnssecData?.map((e) => e?.toJson())?.toList());
  writeNotNull('zone', instance.zone?.toJson());
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

const _$ParkingProviderConstantsEnumMap = {
  ParkingProviderConstants.SEDO: 'SEDO',
  ParkingProviderConstants.NAMEDRIVE: 'NAMEDRIVE',
  ParkingProviderConstants.PARKINGCREW: 'PARKINGCREW',
};

const _$DNSCheckEnumMap = {
  DNSCheck.SOA: 'SOA',
  DNSCheck.NS: 'NS',
  DNSCheck.ALL: 'ALL',
  DNSCheck.NONE: 'NONE',
};

const _$RddsOptInConstantsEnumMap = {
  RddsOptInConstants.NOT_SET: 'NOT_SET',
  RddsOptInConstants.OWNERC: 'OWNERC',
  RddsOptInConstants.ADMINC: 'ADMINC',
  RddsOptInConstants.OWNERC_ADMINC: 'OWNERC_ADMINC',
  RddsOptInConstants.TECHC: 'TECHC',
  RddsOptInConstants.OWNERC_TECHC: 'OWNERC_TECHC',
  RddsOptInConstants.ADMINC_TECHC: 'ADMINC_TECHC',
  RddsOptInConstants.ALL: 'ALL',
};

const _$DomainActionConstantsEnumMap = {
  DomainActionConstants.CREATE: 'CREATE',
  DomainActionConstants.UPDATE: 'UPDATE',
  DomainActionConstants.UPDATE_OWNER_CHANGE: 'UPDATE_OWNER_CHANGE',
  DomainActionConstants.UPDATE_DNSSEC: 'UPDATE_DNSSEC',
  DomainActionConstants.UPDATE_NAMESERVER: 'UPDATE_NAMESERVER',
  DomainActionConstants.DELETE: 'DELETE',
  DomainActionConstants.TRANSIT: 'TRANSIT',
  DomainActionConstants.TRANSFER: 'TRANSFER',
  DomainActionConstants.TRANSFER_INTERN: 'TRANSFER_INTERN',
  DomainActionConstants.TRANSFER_INTERN_REGISTRAR_CHANGE:
      'TRANSFER_INTERN_REGISTRAR_CHANGE',
  DomainActionConstants.TRANSFER_INTERN_REGISTRAR_CHANGE_RUNTIME_TAKEOVER:
      'TRANSFER_INTERN_REGISTRAR_CHANGE_RUNTIME_TAKEOVER',
  DomainActionConstants.IMPORT: 'IMPORT',
  DomainActionConstants.MIGRATE: 'MIGRATE',
  DomainActionConstants.RESTORE: 'RESTORE',
  DomainActionConstants.RESTORE_NE: 'RESTORE_NE',
  DomainActionConstants.RESTORE_RENEW: 'RESTORE_RENEW',
  DomainActionConstants.RESTORE_ARGP: 'RESTORE_ARGP',
  DomainActionConstants.RENEW: 'RENEW',
  DomainActionConstants.AUTHINFO: 'AUTHINFO',
  DomainActionConstants.AUTHINFO_2: 'AUTHINFO_2',
  DomainActionConstants.UPDATE_STATUS: 'UPDATE_STATUS',
  DomainActionConstants.REGISTRAR_UPDATE_STATUS: 'REGISTRAR_UPDATE_STATUS',
  DomainActionConstants.UPDATE_COMMENT: 'UPDATE_COMMENT',
  DomainActionConstants.AUTOUPDATE_DNS: 'AUTOUPDATE_DNS',
  DomainActionConstants.OWNERCHANGE: 'OWNERCHANGE',
  DomainActionConstants.OWNERCHANGE_TRANSFER: 'OWNERCHANGE_TRANSFER',
  DomainActionConstants.OWNERCHANGE_TRANSFER_INTERN:
      'OWNERCHANGE_TRANSFER_INTERN',
  DomainActionConstants.OWNERCHANGE_TRANSFER_INTERN_REGISTRAR_CHANGE:
      'OWNERCHANGE_TRANSFER_INTERN_REGISTRAR_CHANGE',
  DomainActionConstants.PREACK: 'PREACK',
  DomainActionConstants.WHOIS_REGISTRY_STATUS: 'WHOIS_REGISTRY_STATUS',
  DomainActionConstants.DOMAIN_AWAY: 'DOMAIN_AWAY',
  DomainActionConstants.TRANSFER_OUT_AUTOACK: 'TRANSFER_OUT_AUTOACK',
  DomainActionConstants.DROP: 'DROP',
  DomainActionConstants.AUTHINFO_CREATE: 'AUTHINFO_CREATE',
  DomainActionConstants.AUTHINFO_DELETE: 'AUTHINFO_DELETE',
  DomainActionConstants.AUTOUPDATE_DEFERRED: 'AUTOUPDATE_DEFERRED',
  DomainActionConstants.DOMAIN_BUY: 'DOMAIN_BUY',
};

const _$CancelationStatusConstantsEnumMap = {
  CancelationStatusConstants.DELETE: 'DELETE',
  CancelationStatusConstants.DELETE_EXPIRE: 'DELETE_EXPIRE',
  CancelationStatusConstants.TRANSIT: 'TRANSIT',
  CancelationStatusConstants.TRANSIT_EXPIRE: 'TRANSIT_EXPIRE',
  CancelationStatusConstants.PREACK: 'PREACK',
  CancelationStatusConstants.PREACK_EXPIRE: 'PREACK_EXPIRE',
};

const _$AutoRenewStatusConstantsEnumMap = {
  AutoRenewStatusConstants.TRUE: 'TRUE',
  AutoRenewStatusConstants.FALSE: 'FALSE',
  AutoRenewStatusConstants.ONCE: 'ONCE',
};
