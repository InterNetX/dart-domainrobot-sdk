// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BulkMailProxyPostRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BulkMailProxyPostRequest _$BulkMailProxyPostRequestFromJson(
    Map<String, dynamic> json) {
  return BulkMailProxyPostRequest(
    objects: (json['objects'] as List)
        ?.map((e) =>
            e == null ? null : MailProxy.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    template: json['template'] == null
        ? null
        : MailProxy.fromJson(json['template'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BulkMailProxyPostRequestToJson(
    BulkMailProxyPostRequest instance) {
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
