// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BulkRedirectPostRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BulkRedirectPostRequest _$BulkRedirectPostRequestFromJson(
    Map<String, dynamic> json) {
  return BulkRedirectPostRequest(
    objects: (json['objects'] as List)
        ?.map((e) =>
            e == null ? null : Redirect.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    template: json['template'] == null
        ? null
        : Redirect.fromJson(json['template'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BulkRedirectPostRequestToJson(
    BulkRedirectPostRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('objects', instance.objects?.map((e) => e?.toJson())?.toList());
  writeNotNull('template', instance.template?.toJson());
  return val;
}
