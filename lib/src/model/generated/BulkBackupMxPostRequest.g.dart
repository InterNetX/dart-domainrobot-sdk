// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BulkBackupMxPostRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BulkBackupMxPostRequest _$BulkBackupMxPostRequestFromJson(
    Map<String, dynamic> json) {
  return BulkBackupMxPostRequest(
    objects: (json['objects'] as List)
        ?.map((e) =>
            e == null ? null : BackupMx.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    template: json['template'] == null
        ? null
        : BackupMx.fromJson(json['template'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BulkBackupMxPostRequestToJson(
        BulkBackupMxPostRequest instance) =>
    <String, dynamic>{
      'objects': instance.objects,
      'template': instance.template,
    };
