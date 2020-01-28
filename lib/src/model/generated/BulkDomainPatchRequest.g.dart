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
        BulkDomainPatchRequest instance) =>
    <String, dynamic>{
      'objects': instance.objects,
      'template': instance.template,
      'query': instance.query,
      'modifiers': instance.modifiers,
    };
