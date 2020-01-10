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

Map<String, dynamic> _$CertificateToJson(Certificate instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('created', instance.created?.toIso8601String());
  writeNotNull('updated', instance.updated?.toIso8601String());
  writeNotNull('owner', instance.owner?.toJson());
  writeNotNull('updater', instance.updater?.toJson());
  writeNotNull('extension', instance.extension?.toJson());
  writeNotNull('id', instance.id);
  writeNotNull('partnerOrderId', instance.partnerOrderId);
  writeNotNull('orderId', instance.orderId);
  writeNotNull('adminContact', instance.adminContact?.toJson());
  writeNotNull('technicalContact', instance.technicalContact?.toJson());
  writeNotNull('name', instance.name);
  writeNotNull('lifetime', instance.lifetime?.toJson());
  writeNotNull(
      'software', _$ServerSoftwareTypeConstantsEnumMap[instance.software]);
  writeNotNull('comment', instance.comment);
  writeNotNull('csr', instance.csr);
  writeNotNull('server', instance.server);
  writeNotNull('serialNumber', instance.serialNumber);
  writeNotNull('product', instance.product);
  writeNotNull(
      'codeSigningType', _$CodeSigningTypeEnumMap[instance.codeSigningType]);
  writeNotNull(
      'certificateType', _$CertificateTypeEnumMap[instance.certificateType]);
  writeNotNull(
      'signatureHashAlgorithm',
      _$SignatureHashAlgorithmConstantsEnumMap[
          instance.signatureHashAlgorithm]);
  writeNotNull('expire', instance.expire?.toIso8601String());
  writeNotNull('subjectAlternativeNames',
      instance.subjectAlternativeNames?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'histories', instance.histories?.map((e) => e?.toJson())?.toList());
  writeNotNull('certificationAuthority',
      instance.certificationAuthority?.map((e) => e?.toJson())?.toList());
  writeNotNull('password', instance.password);
  writeNotNull('firstname', instance.firstname);
  writeNotNull('lastname', instance.lastname);
  writeNotNull('organizationUnitName', instance.organizationUnitName);
  writeNotNull('authentication', instance.authentication?.toJson());
  writeNotNull('certificateTransparency', instance.certificateTransparency);
  writeNotNull(
      'certificateTransparencyPrivacy',
      _$CertificateTransparencyPrivacyConstantsEnumMap[
          instance.certificateTransparencyPrivacy]);
  writeNotNull('domain', instance.domain);
  writeNotNull('hasCsr', instance.hasCsr);
  writeNotNull('idn', instance.idn);
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
