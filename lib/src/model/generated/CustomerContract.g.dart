// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CustomerContract.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerContract _$CustomerContractFromJson(Map<String, dynamic> json) {
  return CustomerContract(
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    updated: json['updated'] == null
        ? null
        : DateTime.parse(json['updated'] as String),
    contract: json['contract'] == null
        ? null
        : GenericLabelEntity.fromJson(json['contract'] as Map<String, dynamic>),
    notice: json['notice'] as String,
    ticketNumber: json['ticketNumber'] as String,
  );
}

Map<String, dynamic> _$CustomerContractToJson(CustomerContract instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('created', instance.created?.toIso8601String());
  writeNotNull('updated', instance.updated?.toIso8601String());
  writeNotNull('contract', instance.contract?.toJson());
  writeNotNull('notice', instance.notice);
  writeNotNull('ticketNumber', instance.ticketNumber);
  return val;
}
