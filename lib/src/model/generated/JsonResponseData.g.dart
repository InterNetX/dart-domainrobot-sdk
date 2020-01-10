// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'JsonResponseData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JsonResponseData _$JsonResponseDataFromJson(Map<String, dynamic> json) {
  return JsonResponseData(
    stid: json['stid'] as String,
    messages: (json['messages'] as List)
        ?.map((e) =>
            e == null ? null : Message.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] == null
        ? null
        : ResponseStatus.fromJson(json['status'] as Map<String, dynamic>),
    object: json['object'] == null
        ? null
        : ResponseObject.fromJson(json['object'] as Map<String, dynamic>),
    data: json['data'] as List,
    ctid: json['ctid'] as String,
  );
}

Map<String, dynamic> _$JsonResponseDataToJson(JsonResponseData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('stid', instance.stid);
  writeNotNull(
      'messages', instance.messages?.map((e) => e?.toJson())?.toList());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('object', instance.object?.toJson());
  writeNotNull('data', instance.data);
  writeNotNull('ctid', instance.ctid);
  return val;
}
