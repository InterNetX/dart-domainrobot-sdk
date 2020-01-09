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

Map<String, dynamic> _$DomainServicesToJson(DomainServices instance) =>
    <String, dynamic>{
      'backupMx': instance.backupMx,
      'mailProxy': instance.mailProxy,
      'redirect': instance.redirect,
      'domainMonitoring': instance.domainMonitoring,
    };
