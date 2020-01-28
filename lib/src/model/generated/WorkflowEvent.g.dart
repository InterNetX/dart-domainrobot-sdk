// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WorkflowEvent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkflowEvent _$WorkflowEventFromJson(Map<String, dynamic> json) {
  return WorkflowEvent(
    vertex: json['vertex'] as int,
    type: json['type'] as String,
  );
}

Map<String, dynamic> _$WorkflowEventToJson(WorkflowEvent instance) =>
    <String, dynamic>{
      'vertex': instance.vertex,
      'type': instance.type,
    };
