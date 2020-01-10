// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ObjectJob.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ObjectJob _$ObjectJobFromJson(Map<String, dynamic> json) {
  return ObjectJob(
    job: json['job'] == null
        ? null
        : Job.fromJson(json['job'] as Map<String, dynamic>),
    object: json['object'] == null
        ? null
        : ResponseObject.fromJson(json['object'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ObjectJobToJson(ObjectJob instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('job', instance.job?.toJson());
  writeNotNull('object', instance.object?.toJson());
  return val;
}
