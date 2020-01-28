// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BulkObjectUserAssignmentPatchRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BulkObjectUserAssignmentPatchRequest
    _$BulkObjectUserAssignmentPatchRequestFromJson(Map<String, dynamic> json) {
  return BulkObjectUserAssignmentPatchRequest(
    objects: (json['objects'] as List)
        ?.map((e) => e == null
            ? null
            : ObjectUserAssignment.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    template: json['template'] == null
        ? null
        : ObjectUserAssignment.fromJson(
            json['template'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BulkObjectUserAssignmentPatchRequestToJson(
        BulkObjectUserAssignmentPatchRequest instance) =>
    <String, dynamic>{
      'objects': instance.objects,
      'template': instance.template,
    };
