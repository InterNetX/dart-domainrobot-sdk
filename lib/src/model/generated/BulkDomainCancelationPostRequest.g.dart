// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BulkDomainCancelationPostRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BulkDomainCancelationPostRequest _$BulkDomainCancelationPostRequestFromJson(
    Map<String, dynamic> json) {
  return BulkDomainCancelationPostRequest(
    objects: (json['objects'] as List)
        ?.map((e) => e == null
            ? null
            : DomainCancelation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    template: json['template'] == null
        ? null
        : DomainCancelation.fromJson(json['template'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BulkDomainCancelationPostRequestToJson(
        BulkDomainCancelationPostRequest instance) =>
    <String, dynamic>{
      'objects': instance.objects,
      'template': instance.template,
    };
