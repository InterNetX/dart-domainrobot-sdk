// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BulkDomainDeleteRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BulkDomainDeleteRequest _$BulkDomainDeleteRequestFromJson(
    Map<String, dynamic> json) {
  return BulkDomainDeleteRequest(
    objects: (json['objects'] as List)
        ?.map((e) =>
            e == null ? null : Domain.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    query: json['query'] == null
        ? null
        : Query.fromJson(json['query'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BulkDomainDeleteRequestToJson(
        BulkDomainDeleteRequest instance) =>
    <String, dynamic>{
      'objects': instance.objects,
      'query': instance.query,
    };
