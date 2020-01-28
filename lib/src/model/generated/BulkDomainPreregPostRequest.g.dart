// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BulkDomainPreregPostRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BulkDomainPreregPostRequest _$BulkDomainPreregPostRequestFromJson(
    Map<String, dynamic> json) {
  return BulkDomainPreregPostRequest(
    objects: (json['objects'] as List)
        ?.map((e) =>
            e == null ? null : DomainPrereg.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    template: json['template'] == null
        ? null
        : DomainPrereg.fromJson(json['template'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BulkDomainPreregPostRequestToJson(
        BulkDomainPreregPostRequest instance) =>
    <String, dynamic>{
      'objects': instance.objects,
      'template': instance.template,
    };
