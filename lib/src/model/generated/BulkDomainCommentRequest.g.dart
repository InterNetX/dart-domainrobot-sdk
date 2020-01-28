// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BulkDomainCommentRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BulkDomainCommentRequest _$BulkDomainCommentRequestFromJson(
    Map<String, dynamic> json) {
  return BulkDomainCommentRequest(
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
  );
}

Map<String, dynamic> _$BulkDomainCommentRequestToJson(
        BulkDomainCommentRequest instance) =>
    <String, dynamic>{
      'objects': instance.objects,
      'template': instance.template,
      'query': instance.query,
    };
