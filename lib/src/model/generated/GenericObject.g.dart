// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GenericObject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenericObject _$GenericObjectFromJson(Map<String, dynamic> json) {
  return GenericObject(
    type: json['type'] as String,
    value: json['value'] as String,
  );
}

Map<String, dynamic> _$GenericObjectToJson(GenericObject instance) =>
    <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
    };
