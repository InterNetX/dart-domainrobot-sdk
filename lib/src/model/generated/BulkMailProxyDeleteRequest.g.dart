// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BulkMailProxyDeleteRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BulkMailProxyDeleteRequest _$BulkMailProxyDeleteRequestFromJson(
    Map<String, dynamic> json) {
  return BulkMailProxyDeleteRequest(
    objects: (json['objects'] as List)
        ?.map((e) =>
            e == null ? null : MailProxy.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    query: json['query'] == null
        ? null
        : Query.fromJson(json['query'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BulkMailProxyDeleteRequestToJson(
        BulkMailProxyDeleteRequest instance) =>
    <String, dynamic>{
      'objects': instance.objects,
      'query': instance.query,
    };
