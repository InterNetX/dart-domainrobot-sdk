import 'package:json_annotation/json_annotation.dart';
import 'CertAuthentication.dart';
import 'CertificateHistory.dart';
import 'CsrHashAlgorithmConstants.dart';
import 'SignatureHashAlgorithmConstants.dart';

part 'CertificateData.g.dart';

@JsonSerializable()
class CertificateData {
  /// The plain csr.
  String plain;
  
/// The common name.
  String name;
  
/// The subject alternative names, listed in the csr.
  List<String> san;
  
/// The certificate history.
  List<CertificateHistory> histories;
  
/// The size of the csr key.
  int keySize;
  
/// The country code defined in the csr.
  String countryCode;
  
/// The password defined in the csr.
  String challengePassword;
  
/// The state defined in the csr.
  String state;
  
/// The city defined in the csr.
  String city;
  
/// The organization defined in the csr.
  String organization;
  
/// The organization unit defined in the csr.
  String organizationUnit;
  
/// The email defined in the csr.
  String email;
  
/// The ssl product.
  String product;
  
/// The authentication data.
  List<CertAuthentication> authentication;
  
/// The csr algorithm.
  CsrHashAlgorithmConstants algorithm;
  
/// The signature hash algorithm.
  SignatureHashAlgorithmConstants signatureHashAlgorithm;
  
/// The idn version of the common name.
  String idn;
  
/// Activates the caa record check.
  bool checkCaa;
  
  
  
  CertificateData({
  	this.plain,
  	this.name,
  	this.san,
  	this.histories,
  	this.keySize,
  	this.countryCode,
  	this.challengePassword,
  	this.state,
  	this.city,
  	this.organization,
  	this.organizationUnit,
  	this.email,
  	this.product,
  	this.authentication,
  	this.algorithm,
  	this.signatureHashAlgorithm,
  	this.idn,
  	this.checkCaa,
  });

  @override
  String toString() {
    return 'CertificateData[plain=$plain, name=$name, san=$san, histories=$histories, keySize=$keySize, countryCode=$countryCode, challengePassword=$challengePassword, state=$state, city=$city, organization=$organization, organizationUnit=$organizationUnit, email=$email, product=$product, authentication=$authentication, algorithm=$algorithm, signatureHashAlgorithm=$signatureHashAlgorithm, idn=$idn, checkCaa=$checkCaa, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory CertificateData.fromJson(Map<String, dynamic> json) =>
      _$CertificateDataFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$CertificateDataToJson(this);
  
}

