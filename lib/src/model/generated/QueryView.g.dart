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
    from: json['from'] == null ? null : DateTime.parse(json['from'] as String),
    to: json['to'] == null ? null : DateTime.parse(json['to'] as String),
  );
}

Map<String, dynamic> _$QueryViewToJson(QueryView instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('limit', instance.limit);
  writeNotNull('offset', instance.offset);
  writeNotNull('children', instance.children);
  writeNotNull('from', instance.from?.toIso8601String());
  writeNotNull('to', instance.to?.toIso8601String());
  return val;
}
