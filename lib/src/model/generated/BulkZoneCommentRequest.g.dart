// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BulkZoneCommentRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BulkZoneCommentRequest _$BulkZoneCommentRequestFromJson(
    Map<String, dynamic> json) {
  return BulkZoneCommentRequest(
    objects: (json['objects'] as List)
        ?.map(
            (e) => e == null ? null : Zone.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    template: json['template'] == null
        ? null
        : Zone.fromJson(json['template'] as Map<String, dynamic>),
    query: json['query'] == null
        ? null
        : Query.fromJson(json['query'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BulkZoneCommentRequestToJson(
        BulkZoneCommentRequest instance) =>
    <String, dynamic>{
      'objects': instance.objects,
      'template': instance.template,
      'query': instance.query,
    };
