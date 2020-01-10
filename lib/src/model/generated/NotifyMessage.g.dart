// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'NotifyMessage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotifyMessage _$NotifyMessageFromJson(Map<String, dynamic> json) {
  return NotifyMessage(
    type: json['type'] as String,
  );
}

Map<String, dynamic> _$NotifyMessageToJson(NotifyMessage instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  return val;
}
