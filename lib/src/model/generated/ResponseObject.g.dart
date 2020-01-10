// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ResponseObject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseObject _$ResponseObjectFromJson(Map<String, dynamic> json) {
  return ResponseObject(
    type: json['type'] as String,
    value: json['value'] as String,
    summary: json['summary'] as int,
    data: json['data'],
  );
}

Map<String, dynamic> _$ResponseObjectToJson(ResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('value', instance.value);
  writeNotNull('summary', instance.summary);
  writeNotNull('data', instance.data);
  return val;
}
