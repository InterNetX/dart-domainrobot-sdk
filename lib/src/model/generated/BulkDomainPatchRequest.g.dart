// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BulkDomainPatchRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BulkDomainPatchRequest _$BulkDomainPatchRequestFromJson(
    Map<String, dynamic> json) {
  return BulkDomainPatchRequest(
    objects: (json['objects'] as List)
        ?.map((e) =>
            e == null ? null : Domain.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    template: json['template'] == null
        ? null
        : Domain.fromJson(json['template'] as Map<String, dynamic>),
    query: json['query'] == null
        ? null
        : Query.fromJson(json['query'] as Map<String, dynamic>),
    modifiers: (json['modifiers'] as List)
        ?.map((e) =>
            e == null ? null : Modifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$BulkDomainPatchRequestToJson(
    BulkDomainPatchRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('objects', instance.objects?.map((e) => e?.toJson())?.toList());
  writeNotNull('template', instance.template?.toJson());
  writeNotNull('query', instance.query?.toJson());
  writeNotNull(
      'modifiers', instance.modifiers?.map((e) => e?.toJson())?.toList());
  return val;
}
