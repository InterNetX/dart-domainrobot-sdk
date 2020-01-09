// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'JsonResponseDataListJsonResponseDataDomainCancelation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JsonResponseDataListJsonResponseDataDomainCancelation
    _$JsonResponseDataListJsonResponseDataDomainCancelationFromJson(
        Map<String, dynamic> json) {
  return JsonResponseDataListJsonResponseDataDomainCancelation(
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
    data: (json['data'] as List)
        ?.map((e) => (e as List)
            ?.map((e) => e == null
                ? null
                : JsonResponseDataDomainCancelation.fromJson(
                    e as Map<String, dynamic>))
            ?.toList())
        ?.toList(),
    ctid: json['ctid'] as String,
  );
}

Map<String, dynamic>
    _$JsonResponseDataListJsonResponseDataDomainCancelationToJson(
            JsonResponseDataListJsonResponseDataDomainCancelation instance) =>
        <String, dynamic>{
          'stid': instance.stid,
          'messages': instance.messages,
          'status': instance.status,
          'object': instance.object,
          'data': instance.data,
          'ctid': instance.ctid,
        };
