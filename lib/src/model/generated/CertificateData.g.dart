// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CertificateData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CertificateData _$CertificateDataFromJson(Map<String, dynamic> json) {
  return CertificateData(
    plain: json['plain'] as String,
    name: json['name'] as String,
    san: (json['san'] as List)?.map((e) => e as String)?.toList(),
    histories: (json['histories'] as List)
        ?.map((e) => e == null
            ? null
            : CertificateHistory.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    keySize: json['keySize'] as int,
    countryCode: json['countryCode'] as String,
    challengePassword: json['challengePassword'] as String,
    state: json['state'] as String,
    city: json['city'] as String,
    organization: json['organization'] as String,
    organizationUnit: json['organizationUnit'] as String,
    email: json['email'] as String,
    product: json['product'] as String,
    authentication: (json['authentication'] as List)
        ?.map((e) => e == null
            ? null
            : CertAuthentication.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    algorithm: _$enumDecodeNullable(
        _$CsrHashAlgorithmConstantsEnumMap, json['algorithm']),
    signatureHashAlgorithm: _$enumDecodeNullable(
        _$SignatureHashAlgorithmConstantsEnumMap,
        json['signatureHashAlgorithm']),
    idn: json['idn'] as String,
    checkCaa: json['checkCaa'] as bool,
  );
}

Map<String, dynamic> _$CertificateDataToJson(CertificateData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('plain', instance.plain);
  writeNotNull('name', instance.name);
  writeNotNull('san', instance.san);
  writeNotNull(
      'histories', instance.histories?.map((e) => e?.toJson())?.toList());
  writeNotNull('keySize', instance.keySize);
  writeNotNull('countryCode', instance.countryCode);
  writeNotNull('challengePassword', instance.challengePassword);
  writeNotNull('state', instance.state);
  writeNotNull('city', instance.city);
  writeNotNull('organization', instance.organization);
  writeNotNull('organizationUnit', instance.organizationUnit);
  writeNotNull('email', instance.email);
  writeNotNull('product', instance.product);
  writeNotNull('authentication',
      instance.authentication?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'algorithm', _$CsrHashAlgorithmConstantsEnumMap[instance.algorithm]);
  writeNotNull(
      'signatureHashAlgorithm',
      _$SignatureHashAlgorithmConstantsEnumMap[
          instance.signatureHashAlgorithm]);
  writeNotNull('idn', instance.idn);
  writeNotNull('checkCaa', instance.checkCaa);
  return val;
}

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$CsrHashAlgorithmConstantsEnumMap = {
  CsrHashAlgorithmConstants.ECC: 'ECC',
  CsrHashAlgorithmConstants.RSA: 'RSA',
  CsrHashAlgorithmConstants.DSA: 'DSA',
};

const _$SignatureHashAlgorithmConstantsEnumMap = {
  SignatureHashAlgorithmConstants.SHA1: 'SHA1',
  SignatureHashAlgorithmConstants.SHA2: 'SHA2',
  SignatureHashAlgorithmConstants.SHA2_FULL_CHAIN: 'SHA2_FULL_CHAIN',
  SignatureHashAlgorithmConstants.UNKNOWN: 'UNKNOWN',
  SignatureHashAlgorithmConstants.SHA384: 'SHA384',
  SignatureHashAlgorithmConstants.SHA512: 'SHA512',
  SignatureHashAlgorithmConstants.SHA256: 'SHA256',
};
