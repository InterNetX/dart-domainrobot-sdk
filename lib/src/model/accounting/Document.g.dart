// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Document _$DocumentFromJson(Map<String, dynamic> json) {
  return Document(
    created: json['created'] as String,
    updated: json['updated'] as String,
    name: json['name'] as String,
    data: json['data'] as String,
    id: json['id'] as int,
    mimeType: json['mimeType'] as String,
    type: json['type'] as String,
    comment: json['comment'] as String,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$DocumentToJson(Document instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('created', instance.created);
  writeNotNull('updated', instance.updated);
  writeNotNull('id', instance.id);
  writeNotNull('type', instance.type);
  writeNotNull('comment', instance.comment);
  writeNotNull('mimeType', instance.mimeType);
  writeNotNull('data', instance.data);
  writeNotNull('size', instance.size);
  writeNotNull('name', instance.name);
  return val;
}
