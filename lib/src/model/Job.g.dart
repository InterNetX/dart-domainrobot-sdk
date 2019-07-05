// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Job _$JobFromJson(Map<String, dynamic> json) {
  return Job(
      id: json['id'] as int,
      updated: json['updated'] as String,
      created: json['created'] as String,
      execution: json['execution'] as String,
      status: json['status'] as String);
}

Map<String, dynamic> _$JobToJson(Job instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('created', instance.created);
  writeNotNull('updated', instance.updated);
  writeNotNull('status', instance.status);
  writeNotNull('execution', instance.execution);
  return val;
}
