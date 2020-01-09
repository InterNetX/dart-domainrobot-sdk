// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BulkBackupMxDeleteRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BulkBackupMxDeleteRequest _$BulkBackupMxDeleteRequestFromJson(
    Map<String, dynamic> json) {
  return BulkBackupMxDeleteRequest(
    objects: (json['objects'] as List)
        ?.map((e) =>
            e == null ? null : BackupMx.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    query: json['query'] == null
        ? null
        : Query.fromJson(json['query'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BulkBackupMxDeleteRequestToJson(
        BulkBackupMxDeleteRequest instance) =>
    <String, dynamic>{
      'objects': instance.objects,
      'query': instance.query,
    };
