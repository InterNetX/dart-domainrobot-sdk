// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BulkZonePostRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BulkZonePostRequest _$BulkZonePostRequestFromJson(Map<String, dynamic> json) {
  return BulkZonePostRequest(
    objects: (json['objects'] as List)
        ?.map(
            (e) => e == null ? null : Zone.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    template: json['template'] == null
        ? null
        : Zone.fromJson(json['template'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BulkZonePostRequestToJson(
        BulkZonePostRequest instance) =>
    <String, dynamic>{
      'objects': instance.objects,
      'template': instance.template,
    };
