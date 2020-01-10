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

Map<String, dynamic> _$HandleVerificationToJson(HandleVerification instance) {
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
  writeNotNull('reference', instance.reference);
  writeNotNull('messageSend', instance.messageSend?.toIso8601String());
  writeNotNull('confirmed', instance.confirmed?.toIso8601String());
  writeNotNull('confirmIp', instance.confirmIp?.toJson());
  writeNotNull('failed', instance.failed?.toIso8601String());
  writeNotNull('domain', instance.domain?.map((e) => e?.toJson())?.toList());
  writeNotNull('verificationMail',
      instance.verificationMail?.map((e) => e?.toJson())?.toList());
  writeNotNull('comment', instance.comment);
  writeNotNull('action', instance.action);
  writeNotNull('handle', instance.handle?.toJson());
  return val;
}
