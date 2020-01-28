// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'HandleVerification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HandleVerification _$HandleVerificationFromJson(Map<String, dynamic> json) {
  return HandleVerification(
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
    reference: json['reference'] as String,
    messageSend: json['messageSend'] == null
        ? null
        : DateTime.parse(json['messageSend'] as String),
    confirmed: json['confirmed'] == null
        ? null
        : DateTime.parse(json['confirmed'] as String),
    confirmIp: json['confirmIp'] == null
        ? null
        : InetAddress.fromJson(json['confirmIp'] as Map<String, dynamic>),
    failed: json['failed'] == null
        ? null
        : DateTime.parse(json['failed'] as String),
    domain: (json['domain'] as List)
        ?.map((e) => e == null
            ? null
            : ContactVerificationDomain.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    verificationMail: (json['verificationMail'] as List)
        ?.map((e) => e == null
            ? null
            : ContactVerificationMessage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    comment: json['comment'] as String,
    action: json['action'] as String,
    handle: json['handle'] == null
        ? null
        : Contact.fromJson(json['handle'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$HandleVerificationToJson(HandleVerification instance) =>
    <String, dynamic>{
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'owner': instance.owner,
      'updater': instance.updater,
      'reference': instance.reference,
      'messageSend': instance.messageSend?.toIso8601String(),
      'confirmed': instance.confirmed?.toIso8601String(),
      'confirmIp': instance.confirmIp,
      'failed': instance.failed?.toIso8601String(),
      'domain': instance.domain,
      'verificationMail': instance.verificationMail,
      'comment': instance.comment,
      'action': instance.action,
      'handle': instance.handle,
    };
