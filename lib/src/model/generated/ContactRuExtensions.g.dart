// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContactRuExtensions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactRuExtensions _$ContactRuExtensionsFromJson(Map<String, dynamic> json) {
  return ContactRuExtensions(
    taxpayerIdentificationNumber:
        json['taxpayerIdentificationNumber'] as String,
    territoryLinkedTaxpayerNumber:
        json['territoryLinkedTaxpayerNumber'] as String,
  );
}

Map<String, dynamic> _$ContactRuExtensionsToJson(ContactRuExtensions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'taxpayerIdentificationNumber', instance.taxpayerIdentificationNumber);
  writeNotNull(
      'territoryLinkedTaxpayerNumber', instance.territoryLinkedTaxpayerNumber);
  return val;
}
