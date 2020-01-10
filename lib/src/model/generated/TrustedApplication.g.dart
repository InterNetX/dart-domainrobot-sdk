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

Map<String, dynamic> _$TrustedApplicationToJson(TrustedApplication instance) {
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
  writeNotNull('user', instance.user?.toJson());
  writeNotNull('uuid', instance.uuid);
  writeNotNull('password', instance.password);
  writeNotNull('application', instance.application?.toJson());
  writeNotNull('functions', instance.functions?.toJson());
  writeNotNull('restrictions', instance.restrictions?.toJson());
  writeNotNull('device', instance.device);
  writeNotNull('comment', instance.comment);
  return val;
}
