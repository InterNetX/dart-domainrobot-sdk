// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BulkDomainPostRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BulkDomainPostRequest _$BulkDomainPostRequestFromJson(
    Map<String, dynamic> json) {
  return BulkDomainPostRequest(
    objects: (json['objects'] as List)
        ?.map((e) =>
            e == null ? null : Domain.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    template: json['template'] == null
        ? null
        : Domain.fromJson(json['template'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BulkDomainPostRequestToJson(
    BulkDomainPostRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('objects', instance.objects?.map((e) => e?.toJson())?.toList());
  writeNotNull('template', instance.template?.toJson());
  return val;
}
