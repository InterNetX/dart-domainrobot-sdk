// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SEPAMandate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SEPAMandate _$SEPAMandateFromJson(Map<String, dynamic> json) {
  return SEPAMandate(
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    updated: json['updated'] == null
        ? null
        : DateTime.parse(json['updated'] as String),
    reference: json['reference'] as String,
    confirmSignature: json['confirmSignature'] == null
        ? null
        : DateTime.parse(json['confirmSignature'] as String),
    confirmIp: json['confirmIp'] == null
        ? null
        : InetAddress.fromJson(json['confirmIp'] as Map<String, dynamic>),
    confirmUseragent: json['confirmUseragent'] as String,
    confirmChecked: json['confirmChecked'] as bool,
    expire: json['expire'] == null
        ? null
        : DateTime.parse(json['expire'] as String),
    histories: (json['histories'] as List)
        ?.map((e) =>
            e == null ? null : SEPAMandate.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    accountHolder: json['accountHolder'] as String,
    iban: json['iban'] as String,
    bic: json['bic'] as String,
  );
}

Map<String, dynamic> _$SEPAMandateToJson(SEPAMandate instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('created', instance.created?.toIso8601String());
  writeNotNull('updated', instance.updated?.toIso8601String());
  writeNotNull('reference', instance.reference);
  writeNotNull(
      'confirmSignature', instance.confirmSignature?.toIso8601String());
  writeNotNull('confirmIp', instance.confirmIp?.toJson());
  writeNotNull('confirmUseragent', instance.confirmUseragent);
  writeNotNull('confirmChecked', instance.confirmChecked);
  writeNotNull('expire', instance.expire?.toIso8601String());
  writeNotNull(
      'histories', instance.histories?.map((e) => e?.toJson())?.toList());
  writeNotNull('accountHolder', instance.accountHolder);
  writeNotNull('iban', instance.iban);
  writeNotNull('bic', instance.bic);
  return val;
}
