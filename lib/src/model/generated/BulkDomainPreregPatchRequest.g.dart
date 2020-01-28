// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BulkDomainPreregPatchRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BulkDomainPreregPatchRequest _$BulkDomainPreregPatchRequestFromJson(
    Map<String, dynamic> json) {
  return BulkDomainPreregPatchRequest(
    objects: (json['objects'] as List)
        ?.map((e) =>
            e == null ? null : DomainPrereg.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    template: json['template'] == null
        ? null
        : DomainPrereg.fromJson(json['template'] as Map<String, dynamic>),
    query: json['query'] == null
        ? null
        : Query.fromJson(json['query'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BulkDomainPreregPatchRequestToJson(
        BulkDomainPreregPatchRequest instance) =>
    <String, dynamic>{
      'objects': instance.objects,
      'template': instance.template,
      'query': instance.query,
    };
