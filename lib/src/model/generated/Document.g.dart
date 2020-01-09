// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Document _$DocumentFromJson(Map<String, dynamic> json) {
  return Document(
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
  );
}

Map<String, dynamic> _$DocumentToJson(Document instance) => <String, dynamic>{
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
    };
