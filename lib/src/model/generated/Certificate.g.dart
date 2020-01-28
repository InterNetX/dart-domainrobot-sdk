// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Certificate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Certificate _$CertificateFromJson(Map<String, dynamic> json) {
  return Certificate(
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    updated: json['updated'] == null
        ? null
        : DateTime.parse(json['updated'] as String),
    owner: json['owner'] == null
        ? null
        : BasicUser.fromJson(json['owner'] as Map<String, dynamic>),
    updater: json['updater'] == null
        ? null
        : BasicUser.fromJson(json['updater'] as Map<String, dynamic>),
    extension: json['extension'] == null
        ? null
        : ExtendedValidationExtension.fromJson(
            json['extension'] as Map<String, dynamic>),
    id: json['id'] as int,
    partnerOrderId: json['partnerOrderId'] as String,
    orderId: json['orderId'] as String,
    adminContact: json['adminContact'] == null
        ? null
        : SslContact.fromJson(json['adminContact'] as Map<String, dynamic>),
    technicalContact: json['technicalContact'] == null
        ? null
        : SslContact.fromJson(json['technicalContact'] as Map<String, dynamic>),
    name: json['name'] as String,
    lifetime: json['lifetime'] == null
        ? null
        : TimePeriod.fromJson(json['lifetime'] as Map<String, dynamic>),
    software: _$enumDecodeNullable(
        _$ServerSoftwareTypeConstantsEnumMap, json['software']),
    comment: json['comment'] as String,
    csr: json['csr'] as String,
    server: json['server'] as String,
    serialNumber: json['serialNumber'] as String,
    product: json['product'] as String,
    codeSigningType:
        _$enumDecodeNullable(_$CodeSigningTypeEnumMap, json['codeSigningType']),
    certificateType:
        _$enumDecodeNullable(_$CertificateTypeEnumMap, json['certificateType']),
    signatureHashAlgorithm: _$enumDecodeNullable(
        _$SignatureHashAlgorithmConstantsEnumMap,
        json['signatureHashAlgorithm']),
    expire: json['expire'] == null
        ? null
        : DateTime.parse(json['expire'] as String),
    subjectAlternativeNames: (json['subjectAlternativeNames'] as List)
        ?.map((e) => e == null
            ? null
            : SubjectAlternativeName.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    histories: (json['histories'] as List)
        ?.map((e) => e == null
            ? null
            : CertificateHistory.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    certificationAuthority: (json['certificationAuthority'] as List)
        ?.map((e) => e == null
            ? null
            : CaCertificate.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    password: json['password'] as String,
    firstname: json['firstname'] as String,
    lastname: json['lastname'] as String,
    technicalContactEmail: json['technicalContactEmail'] as String,
    organizationUnitName: json['organizationUnitName'] as String,
    authentication: json['authentication'] == null
        ? null
        : CertAuthentication.fromJson(
            json['authentication'] as Map<String, dynamic>),
    certificateTransparency: json['certificateTransparency'] as bool,
    certificateTransparencyPrivacy: _$enumDecodeNullable(
        _$CertificateTransparencyPrivacyConstantsEnumMap,
        json['certificateTransparencyPrivacy']),
    domain: json['domain'] as String,
    hasCsr: json['hasCsr'] as bool,
    idn: json['idn'] as String,
  );
}

Map<String, dynamic> _$CertificateToJson(Certificate instance) =>
    <String, dynamic>{
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'owner': instance.owner,
      'updater': instance.updater,
      'extension': instance.extension,
      'id': instance.id,
      'partnerOrderId': instance.partnerOrderId,
      'orderId': instance.orderId,
      'adminContact': instance.adminContact,
      'technicalContact': instance.technicalContact,
      'name': instance.name,
      'lifetime': instance.lifetime,
      'software': _$ServerSoftwareTypeConstantsEnumMap[instance.software],
      'comment': instance.comment,
      'csr': instance.csr,
      'server': instance.server,
      'serialNumber': instance.serialNumber,
      'product': instance.product,
      'codeSigningType': _$CodeSigningTypeEnumMap[instance.codeSigningType],
      'certificateType': _$CertificateTypeEnumMap[instance.certificateType],
      'signatureHashAlgorithm': _$SignatureHashAlgorithmConstantsEnumMap[
          instance.signatureHashAlgorithm],
      'expire': instance.expire?.toIso8601String(),
      'subjectAlternativeNames': instance.subjectAlternativeNames,
      'histories': instance.histories,
      'certificationAuthority': instance.certificationAuthority,
      'password': instance.password,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'technicalContactEmail': instance.technicalContactEmail,
      'organizationUnitName': instance.organizationUnitName,
      'authentication': instance.authentication,
      'certificateTransparency': instance.certificateTransparency,
      'certificateTransparencyPrivacy':
          _$CertificateTransparencyPrivacyConstantsEnumMap[
              instance.certificateTransparencyPrivacy],
      'domain': instance.domain,
      'hasCsr': instance.hasCsr,
      'idn': instance.idn,
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

const _$ServerSoftwareTypeConstantsEnumMap = {
  ServerSoftwareTypeConstants.IIS4: 'IIS4',
  ServerSoftwareTypeConstants.IIS5: 'IIS5',
  ServerSoftwareTypeConstants.APACHE2: 'APACHE2',
  ServerSoftwareTypeConstants.APACHESSL: 'APACHESSL',
  ServerSoftwareTypeConstants.PLESK: 'PLESK',
  ServerSoftwareTypeConstants.TOMCAT: 'TOMCAT',
  ServerSoftwareTypeConstants.NOT_SET: 'NOT_SET',
};

const _$CodeSigningTypeEnumMap = {
  CodeSigningType.JAVASOFT: 'JAVASOFT',
  CodeSigningType.MS_AUTHENTICODE: 'MS_AUTHENTICODE',
  CodeSigningType.VBA: 'VBA',
  CodeSigningType.ADOBE_AIR: 'ADOBE_AIR',
  CodeSigningType.APPLE: 'APPLE',
};

const _$CertificateTypeEnumMap = {
  CertificateType.FQDN: 'FQDN',
  CertificateType.MAIL: 'MAIL',
  CertificateType.CODE: 'CODE',
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

const _$CertificateTransparencyPrivacyConstantsEnumMap = {
  CertificateTransparencyPrivacyConstants.PUBLIC: 'PUBLIC',
  CertificateTransparencyPrivacyConstants.REDACTED: 'REDACTED',
};
