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

Map<String, dynamic> _$GenericObjectToJson(GenericObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('value', instance.value);
  return val;
}
