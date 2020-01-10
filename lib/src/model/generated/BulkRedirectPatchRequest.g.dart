// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BulkRedirectPatchRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BulkRedirectPatchRequest _$BulkRedirectPatchRequestFromJson(
    Map<String, dynamic> json) {
  return BulkRedirectPatchRequest(
    objects: (json['objects'] as List)
        ?.map((e) =>
            e == null ? null : Redirect.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    template: json['template'] == null
        ? null
        : Redirect.fromJson(json['template'] as Map<String, dynamic>),
    query: json['query'] == null
        ? null
        : Query.fromJson(json['query'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BulkRedirectPatchRequestToJson(
    BulkRedirectPatchRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('objects', instance.objects?.map((e) => e?.toJson())?.toList());
  writeNotNull('template', instance.template?.toJson());
  writeNotNull('query', instance.query?.toJson());
  return val;
}
