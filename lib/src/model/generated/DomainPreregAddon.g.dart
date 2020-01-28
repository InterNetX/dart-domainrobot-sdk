// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DomainPreregAddon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DomainPreregAddon _$DomainPreregAddonFromJson(Map<String, dynamic> json) {
  return DomainPreregAddon(
    irpAppCapacit: json['irpAppCapacit'] as String,
    irpAppDate: json['irpAppDate'] == null
        ? null
        : DateTime.parse(json['irpAppDate'] as String),
    irpCcLocality: json['irpCcLocality'] as String,
    irpName: json['irpName'] as String,
    irpNumber: json['irpNumber'] as String,
    irpPvrc: json['irpPvrc'] as String,
    irpRegDate: json['irpRegDate'] == null
        ? null
        : DateTime.parse(json['irpRegDate'] as String),
    mode: json['mode'] as String,
    confirmOrder: json['confirmOrder'] as bool,
    externalReference: json['externalReference'] as String,
    notAfter: json['notAfter'] == null
        ? null
        : DateTime.parse(json['notAfter'] as String),
    confirmed: json['confirmed'] == null
        ? null
        : DateTime.parse(json['confirmed'] as String),
    confirmIp: json['confirmIp'] as String,
    priceClass: json['priceClass'] as String,
  );
}

Map<String, dynamic> _$DomainPreregAddonToJson(DomainPreregAddon instance) =>
    <String, dynamic>{
      'irpAppCapacit': instance.irpAppCapacit,
      'irpAppDate': instance.irpAppDate?.toIso8601String(),
      'irpCcLocality': instance.irpCcLocality,
      'irpName': instance.irpName,
      'irpNumber': instance.irpNumber,
      'irpPvrc': instance.irpPvrc,
      'irpRegDate': instance.irpRegDate?.toIso8601String(),
      'mode': instance.mode,
      'confirmOrder': instance.confirmOrder,
      'externalReference': instance.externalReference,
      'notAfter': instance.notAfter?.toIso8601String(),
      'confirmed': instance.confirmed?.toIso8601String(),
      'confirmIp': instance.confirmIp,
      'priceClass': instance.priceClass,
    };
