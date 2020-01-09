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

Map<String, dynamic> _$CertificateDataToJson(CertificateData instance) =>
    <String, dynamic>{
      'plain': instance.plain,
      'name': instance.name,
      'san': instance.san,
      'histories': instance.histories,
      'keySize': instance.keySize,
      'countryCode': instance.countryCode,
      'challengePassword': instance.challengePassword,
      'state': instance.state,
      'city': instance.city,
      'organization': instance.organization,
      'organizationUnit': instance.organizationUnit,
      'email': instance.email,
      'product': instance.product,
      'authentication': instance.authentication,
      'algorithm': _$CsrHashAlgorithmConstantsEnumMap[instance.algorithm],
      'signatureHashAlgorithm': _$SignatureHashAlgorithmConstantsEnumMap[
          instance.signatureHashAlgorithm],
      'idn': instance.idn,
      'checkCaa': instance.checkCaa,
    };

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
