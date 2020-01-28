// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BulkDomainPostRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BulkDomainPostRequest _$BulkDomainPostRequestFromJson(
    Map<String, dynamic> json) {
  return BulkDomainPostRequest(
    objects: (json['objects'] as List)
        ?.map((e) =>
            e == null ? null : Domain.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    template: json['template'] == null
        ? null
        : Domain.fromJson(json['template'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BulkDomainPostRequestToJson(
        BulkDomainPostRequest instance) =>
    <String, dynamic>{
      'objects': instance.objects,
      'template': instance.template,
    };
