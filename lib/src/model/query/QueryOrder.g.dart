// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'QueryOrder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryOrder _$QueryOrderFromJson(Map<String, dynamic> json) {
  return QueryOrder(
      key: json['key'] as String,
      type: json['type'] as String,
      ins: json['ins'] as String);
}

Map<String, dynamic> _$QueryOrderToJson(QueryOrder instance) =>
    <String, dynamic>{
      'key': instance.key,
      'type': instance.type,
      'ins': instance.ins
    };
