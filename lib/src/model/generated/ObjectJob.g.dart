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
    object: (json['object'] as List)
        ?.map((e) =>
            e == null ? null : NiccomLog.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ObjectJobToJson(ObjectJob instance) => <String, dynamic>{
      'job': instance.job,
      'object': instance.object,
    };
