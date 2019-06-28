// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Query _$QueryFromJson(Map<String, dynamic> json) {
  return Query(
      filters: (json['filters'] as List)
          ?.map((e) => e == null
              ? null
              : QueryFilter.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      view: json['view'] == null
          ? null
          : QueryView.fromJson(json['view'] as Map<String, dynamic>),
      orders: (json['orders'] as List)
          ?.map((e) =>
              e == null ? null : QueryOrder.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$QueryToJson(Query instance) => <String, dynamic>{
      'filters': instance.filters,
      'view': instance.view,
      'orders': instance.orders
    };
