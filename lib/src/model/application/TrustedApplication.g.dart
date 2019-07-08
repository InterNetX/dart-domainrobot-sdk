// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TrustedApplication.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrustedApplication _$TrustedApplicationFromJson(Map<String, dynamic> json) {
  return TrustedApplication(
      uuid: json['uuid'] as String,
      password: json['password'] as String,
      device: json['device'] as String,
      comment: json['comment'] as String,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      functions: json['functions'] == null
          ? null
          : TrustedApplicationFunctions.fromJson(
              json['functions'] as Map<String, dynamic>),
      application: json['application'] == null
          ? null
          : Application.fromJson(json['application'] as Map<String, dynamic>),
      restrictions: json['restrictions'] == null
          ? null
          : IpRestrictions.fromJson(
              json['restrictions'] as Map<String, dynamic>),
      created: json['created'] as String,
      updated: json['updated'] as String,
      owner: json['owner'] == null
          ? null
          : User.fromJson(json['owner'] as Map<String, dynamic>),
      updater: json['updater'] == null
          ? null
          : User.fromJson(json['updater'] as Map<String, dynamic>));
}

Map<String, dynamic> _$TrustedApplicationToJson(TrustedApplication instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'password': instance.password,
      'device': instance.device,
      'comment': instance.comment,
      'user': instance.user,
      'functions': instance.functions,
      'application': instance.application,
      'restrictions': instance.restrictions,
      'created': instance.created,
      'updated': instance.updated,
      'owner': instance.owner,
      'updater': instance.updater
    };
