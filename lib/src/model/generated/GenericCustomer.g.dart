// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GenericCustomer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenericCustomer _$GenericCustomerFromJson(Map<String, dynamic> json) {
  return GenericCustomer(
    number: json['number'] as int,
    client: json['client'] as String,
    group: json['group'] as int,
  );
}

Map<String, dynamic> _$GenericCustomerToJson(GenericCustomer instance) =>
    <String, dynamic>{
      'number': instance.number,
      'client': instance.client,
      'group': instance.group,
    };
