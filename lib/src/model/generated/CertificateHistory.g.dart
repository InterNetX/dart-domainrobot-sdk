// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CertificateHistory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CertificateHistory _$CertificateHistoryFromJson(Map<String, dynamic> json) {
  return CertificateHistory(
    serialNumber: json['serialNumber'] as String,
    revoked: json['revoked'] == null
        ? null
        : DateTime.parse(json['revoked'] as String),
  );
}

Map<String, dynamic> _$CertificateHistoryToJson(CertificateHistory instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('serialNumber', instance.serialNumber);
  writeNotNull('revoked', instance.revoked?.toIso8601String());
  return val;
}
