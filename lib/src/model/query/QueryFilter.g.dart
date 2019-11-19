// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'QueryFilter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryFilter _$QueryFilterFromJson(Map<String, dynamic> json) {
  return QueryFilter(
    link: json['link'] as String,
    key: json['key'] as String,
    value: json['value'] as String,
    operator: json['operator'] as String,
    filters: (json['filters'] as List)
        ?.map((e) =>
            e == null ? null : QueryFilter.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$QueryFilterToJson(QueryFilter instance) =>
    <String, dynamic>{
      'link': instance.link,
      'key': instance.key,
      'value': instance.value,
      'operator': instance.operator,
      'filters': instance.filters,
    };
