import 'package:json_annotation/json_annotation.dart';
import 'BasicUser.dart';
import 'CaCertificate.dart';
import 'CertAuthentication.dart';
import 'CertificateHistory.dart';
import 'CertificateTransparencyPrivacyConstants.dart';
import 'CertificateType.dart';
import 'CodeSigningType.dart';
import 'ExtendedValidationExtension.dart';
import 'ServerSoftwareTypeConstants.dart';
import 'SignatureHashAlgorithmConstants.dart';
import 'SslContact.dart';
import 'SubjectAlternativeName.dart';
import 'TimePeriod.dart';

part 'Certificate.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class Certificate {
  /// The created date.
  DateTime created;

  /// The updated date.
  DateTime updated;

  /// The owner of the object.
  BasicUser owner;

  /// The updating user of the object.
  BasicUser updater;

  /// The certificate extensions for comodo.
  ExtendedValidationExtension extension;

  /// The ID of the certificate
  int id;

  /// The order number of the related request
  String partnerOrderId;

  /// The unique certificate order number
  String orderId;

  /// The administrative contact
  SslContact adminContact;

  /// The technical contact
  SslContact technicalContact;

  /// The name of the certificate
  String name;

  /// The certificate term in months
  TimePeriod lifetime;

  /// The webserver software in use, relevant values: 'II5' for Mircosoft, 'APACHE2' for Linux
  ServerSoftwareTypeConstants software;

  /// A custom field. Can only be updated via PUT /certificate/{id}/_comment. Requires appropriate ACLs.
  String comment;

  /// CSR - Key (Certificate Signing Request)
  String csr;

  /// The certificate
  String server;

  /// Serial number of the certificate
  String serialNumber;

  /// The ordered product
  String product;

  /// The type of code signing
  CodeSigningType codeSigningType;

  /// The type of the certificate
  CertificateType certificateType;

  /// The signature hash algorithm which was used
  SignatureHashAlgorithmConstants signatureHashAlgorithm;

  /// The date on which the certificate expires
  DateTime expire;

  /// Subject Alternative Names (SANs)
  List<SubjectAlternativeName> subjectAlternativeNames;

  /// The history of the certificate (old certificate versions)
  List<CertificateHistory> histories;

  /// The certificate authority chain
  List<CaCertificate> certificationAuthority;

  /// The password that is to be used for the certificate download. Only for S/MIME!
  String password;

  /// First Name. Only for S/MIME!
  String firstname;

  /// Last Name. Only for S/MIME!
  String lastname;

  /// The organization unit. Only for S/MIME!
  String organizationUnitName;

  /// The authentication of the certificate
  CertAuthentication authentication;

  /// Activates the certificate transparency for a certificate. Default is \"True\".
  bool certificateTransparency;

  /// The privacy settings for certificate transparency. Default is \"Redacted\".
  CertificateTransparencyPrivacyConstants certificateTransparencyPrivacy;

  /// The domain, which the redirect belongs.
  String domain;

  /// States if a self created CSR is to be used for S/MIME. Default is false. Only for S/MIME!
  bool hasCsr;

  /// The IDN version of the URL of the target domain.
  String idn;

  Certificate({
    this.created,
    this.updated,
    this.owner,
    this.updater,
    this.extension,
    this.id,
    this.partnerOrderId,
    this.orderId,
    this.adminContact,
    this.technicalContact,
    this.name,
    this.lifetime,
    this.software,
    this.comment,
    this.csr,
    this.server,
    this.serialNumber,
    this.product,
    this.codeSigningType,
    this.certificateType,
    this.signatureHashAlgorithm,
    this.expire,
    this.subjectAlternativeNames,
    this.histories,
    this.certificationAuthority,
    this.password,
    this.firstname,
    this.lastname,
    this.organizationUnitName,
    this.authentication,
    this.certificateTransparency,
    this.certificateTransparencyPrivacy,
    this.domain,
    this.hasCsr,
    this.idn,
  });

  @override
  String toString() {
    return 'Certificate[created=$created, updated=$updated, owner=$owner, updater=$updater, extension=$extension, id=$id, partnerOrderId=$partnerOrderId, orderId=$orderId, adminContact=$adminContact, technicalContact=$technicalContact, name=$name, lifetime=$lifetime, software=$software, comment=$comment, csr=$csr, server=$server, serialNumber=$serialNumber, product=$product, codeSigningType=$codeSigningType, certificateType=$certificateType, signatureHashAlgorithm=$signatureHashAlgorithm, expire=$expire, subjectAlternativeNames=$subjectAlternativeNames, histories=$histories, certificationAuthority=$certificationAuthority, password=$password, firstname=$firstname, lastname=$lastname, organizationUnitName=$organizationUnitName, authentication=$authentication, certificateTransparency=$certificateTransparency, certificateTransparencyPrivacy=$certificateTransparencyPrivacy, domain=$domain, hasCsr=$hasCsr, idn=$idn, ]';
  }

  ///
  /// Json to Location object
  ///
  factory Certificate.fromJson(Map<String, dynamic> json) =>
      _$CertificateFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$CertificateToJson(this);
}
