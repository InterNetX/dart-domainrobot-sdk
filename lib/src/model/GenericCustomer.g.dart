// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GenericCustomer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenericCustomer _$GenericCustomerFromJson(Map<String, dynamic> json) {
  return GenericCustomer(
      number: json['number'] as int,
      client: json['client'] as String,
      group: json['group'] as String);
}

Map<String, dynamic> _$GenericCustomerToJson(GenericCustomer instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('number', instance.number);
  writeNotNull('client', instance.client);
  writeNotNull('group', instance.group);
  return val;
}
