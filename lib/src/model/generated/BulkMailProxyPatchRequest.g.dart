// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BulkMailProxyPatchRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BulkMailProxyPatchRequest _$BulkMailProxyPatchRequestFromJson(
    Map<String, dynamic> json) {
  return BulkMailProxyPatchRequest(
    objects: (json['objects'] as List)
        ?.map((e) =>
            e == null ? null : MailProxy.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    template: json['template'] == null
        ? null
        : MailProxy.fromJson(json['template'] as Map<String, dynamic>),
    query: json['query'] == null
        ? null
        : Query.fromJson(json['query'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BulkMailProxyPatchRequestToJson(
        BulkMailProxyPatchRequest instance) =>
    <String, dynamic>{
      'objects': instance.objects,
      'template': instance.template,
      'query': instance.query,
    };
