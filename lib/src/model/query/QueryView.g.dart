// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'QueryView.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryView _$QueryViewFromJson(Map<String, dynamic> json) {
  return QueryView(
      limit: json['limit'] as int,
      offset: json['offset'] as int,
      children: json['children'] as bool,
      from: json['from'] as String,
      to: json['to'] as String);
}

Map<String, dynamic> _$QueryViewToJson(QueryView instance) => <String, dynamic>{
      'limit': instance.limit,
      'offset': instance.offset,
      'children': instance.children,
      'from': instance.from,
      'to': instance.to
    };
