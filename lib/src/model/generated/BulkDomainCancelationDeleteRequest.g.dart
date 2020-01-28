// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BulkDomainCancelationDeleteRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BulkDomainCancelationDeleteRequest _$BulkDomainCancelationDeleteRequestFromJson(
    Map<String, dynamic> json) {
  return BulkDomainCancelationDeleteRequest(
    objects: (json['objects'] as List)
        ?.map((e) => e == null
            ? null
            : DomainCancelation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    query: json['query'] == null
        ? null
        : Query.fromJson(json['query'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BulkDomainCancelationDeleteRequestToJson(
        BulkDomainCancelationDeleteRequest instance) =>
    <String, dynamic>{
      'objects': instance.objects,
      'query': instance.query,
    };
