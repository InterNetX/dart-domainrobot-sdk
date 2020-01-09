// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BulkDomainCancelationPatchRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BulkDomainCancelationPatchRequest _$BulkDomainCancelationPatchRequestFromJson(
    Map<String, dynamic> json) {
  return BulkDomainCancelationPatchRequest(
    objects: (json['objects'] as List)
        ?.map((e) => e == null
            ? null
            : DomainCancelation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    template: json['template'] == null
        ? null
        : DomainCancelation.fromJson(json['template'] as Map<String, dynamic>),
    query: json['query'] == null
        ? null
        : Query.fromJson(json['query'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BulkDomainCancelationPatchRequestToJson(
        BulkDomainCancelationPatchRequest instance) =>
    <String, dynamic>{
      'objects': instance.objects,
      'template': instance.template,
      'query': instance.query,
    };
