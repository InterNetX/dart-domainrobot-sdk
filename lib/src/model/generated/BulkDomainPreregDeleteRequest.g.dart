// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BulkDomainPreregDeleteRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BulkDomainPreregDeleteRequest _$BulkDomainPreregDeleteRequestFromJson(
    Map<String, dynamic> json) {
  return BulkDomainPreregDeleteRequest(
    objects: (json['objects'] as List)
        ?.map((e) =>
            e == null ? null : DomainPrereg.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    query: json['query'] == null
        ? null
        : Query.fromJson(json['query'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BulkDomainPreregDeleteRequestToJson(
        BulkDomainPreregDeleteRequest instance) =>
    <String, dynamic>{
      'objects': instance.objects,
      'query': instance.query,
    };
