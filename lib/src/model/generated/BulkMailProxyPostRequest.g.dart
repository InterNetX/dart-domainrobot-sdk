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
        BulkMailProxyPostRequest instance) =>
    <String, dynamic>{
      'objects': instance.objects,
      'template': instance.template,
    };
