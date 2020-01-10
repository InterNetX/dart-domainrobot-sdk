// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DomainServices.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DomainServices _$DomainServicesFromJson(Map<String, dynamic> json) {
  return DomainServices(
    backupMx: (json['backupMx'] as List)
        ?.map((e) =>
            e == null ? null : BackupMx.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    mailProxy: (json['mailProxy'] as List)
        ?.map((e) =>
            e == null ? null : MailProxy.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    redirect: (json['redirect'] as List)
        ?.map((e) =>
            e == null ? null : Redirect.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    domainMonitoring: (json['domainMonitoring'] as List)
        ?.map((e) => e == null
            ? null
            : DomainMonitoring.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DomainServicesToJson(DomainServices instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'backupMx', instance.backupMx?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'mailProxy', instance.mailProxy?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'redirect', instance.redirect?.map((e) => e?.toJson())?.toList());
  writeNotNull('domainMonitoring',
      instance.domainMonitoring?.map((e) => e?.toJson())?.toList());
  return val;
}
