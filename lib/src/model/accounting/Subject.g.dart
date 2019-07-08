// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Subject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Subject _$SubjectFromJson(Map<String, dynamic> json) {
  return Subject(
      name: json['name'] as String,
      customs: (json['customs'] as List)
          ?.map((e) =>
              e == null ? null : Custom.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      object: json['object'] as String);
}

Map<String, dynamic> _$SubjectToJson(Subject instance) => <String, dynamic>{
      'name': instance.name,
      'object': instance.object,
      'customs': instance.customs
    };
