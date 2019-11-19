// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Article _$ArticleFromJson(Map<String, dynamic> json) {
  return Article(
    created: json['created'] as String,
    updated: json['updated'] as String,
    owner: json['owner'] == null
        ? null
        : User.fromJson(json['owner'] as Map<String, dynamic>),
    updater: json['updater'] == null
        ? null
        : User.fromJson(json['updater'] as Map<String, dynamic>),
    label: json['label'] as String,
    type: json['type'] as String,
  );
}

Map<String, dynamic> _$ArticleToJson(Article instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('created', instance.created);
  writeNotNull('updated', instance.updated);
  writeNotNull('owner', instance.owner);
  writeNotNull('updater', instance.updater);
  writeNotNull('label', instance.label);
  writeNotNull('type', instance.type);
  return val;
}
