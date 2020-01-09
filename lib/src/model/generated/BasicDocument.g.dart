// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BasicDocument.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BasicDocument _$BasicDocumentFromJson(Map<String, dynamic> json) {
  return BasicDocument(
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    updated: json['updated'] == null
        ? null
        : DateTime.parse(json['updated'] as String),
    id: json['id'] as int,
    comment: json['comment'] as String,
    type: json['type'] as String,
    mimeType: json['mimeType'] as String,
    data: json['data'] as String,
    size: json['size'] as int,
    name: json['name'] as String,
    link: json['link'] as String,
    uuid: json['uuid'] as String,
    alias: json['alias'] as String,
    owner: json['owner'] == null
        ? null
        : BasicUser.fromJson(json['owner'] as Map<String, dynamic>),
    updater: json['updater'] == null
        ? null
        : BasicUser.fromJson(json['updater'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BasicDocumentToJson(BasicDocument instance) =>
    <String, dynamic>{
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'id': instance.id,
      'comment': instance.comment,
      'type': instance.type,
      'mimeType': instance.mimeType,
      'data': instance.data,
      'size': instance.size,
      'name': instance.name,
      'link': instance.link,
      'uuid': instance.uuid,
      'alias': instance.alias,
      'owner': instance.owner,
      'updater': instance.updater,
    };
