// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TrustedApplication.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrustedApplication _$TrustedApplicationFromJson(Map<String, dynamic> json) {
  return TrustedApplication(
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
    user: json['user'] == null
        ? null
        : BasicUser.fromJson(json['user'] as Map<String, dynamic>),
    uuid: json['uuid'] as String,
    password: json['password'] as String,
    application: json['application'] == null
        ? null
        : Application.fromJson(json['application'] as Map<String, dynamic>),
    functions: json['functions'] == null
        ? null
        : TrustedApplicationFunctions.fromJson(
            json['functions'] as Map<String, dynamic>),
    restrictions: json['restrictions'] == null
        ? null
        : IpRestrictions.fromJson(json['restrictions'] as Map<String, dynamic>),
    device: json['device'] as String,
    comment: json['comment'] as String,
  );
}

Map<String, dynamic> _$TrustedApplicationToJson(TrustedApplication instance) =>
    <String, dynamic>{
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'owner': instance.owner,
      'updater': instance.updater,
      'user': instance.user,
      'uuid': instance.uuid,
      'password': instance.password,
      'application': instance.application,
      'functions': instance.functions,
      'restrictions': instance.restrictions,
      'device': instance.device,
      'comment': instance.comment,
    };
