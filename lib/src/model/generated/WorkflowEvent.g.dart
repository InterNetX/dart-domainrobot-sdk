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

Map<String, dynamic> _$WorkflowEventToJson(WorkflowEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('vertex', instance.vertex);
  writeNotNull('type', instance.type);
  return val;
}
