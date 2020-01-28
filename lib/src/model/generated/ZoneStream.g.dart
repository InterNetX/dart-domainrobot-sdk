// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ZoneStream.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ZoneStream _$ZoneStreamFromJson(Map<String, dynamic> json) {
  return ZoneStream(
    adds: (json['adds'] as List)
        ?.map((e) => e == null
            ? null
            : ResourceRecord.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    rems: (json['rems'] as List)
        ?.map((e) => e == null
            ? null
            : ResourceRecord.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ZoneStreamToJson(ZoneStream instance) =>
    <String, dynamic>{
      'adds': instance.adds,
      'rems': instance.rems,
    };
