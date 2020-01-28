// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BackupMx.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BackupMx _$BackupMxFromJson(Map<String, dynamic> json) {
  return BackupMx(
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
  );
}

Map<String, dynamic> _$BackupMxToJson(BackupMx instance) => <String, dynamic>{
      'domain': instance.domain,
      'idn': instance.idn,
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'owner': instance.owner,
      'updater': instance.updater,
    };
