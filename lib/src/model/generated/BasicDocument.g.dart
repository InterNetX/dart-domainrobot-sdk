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

Map<String, dynamic> _$BasicDocumentToJson(BasicDocument instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('created', instance.created?.toIso8601String());
  writeNotNull('updated', instance.updated?.toIso8601String());
  writeNotNull('id', instance.id);
  writeNotNull('comment', instance.comment);
  writeNotNull('type', instance.type);
  writeNotNull('mimeType', instance.mimeType);
  writeNotNull('data', instance.data);
  writeNotNull('size', instance.size);
  writeNotNull('name', instance.name);
  writeNotNull('link', instance.link);
  writeNotNull('uuid', instance.uuid);
  writeNotNull('alias', instance.alias);
  writeNotNull('owner', instance.owner?.toJson());
  writeNotNull('updater', instance.updater?.toJson());
  return val;
}
