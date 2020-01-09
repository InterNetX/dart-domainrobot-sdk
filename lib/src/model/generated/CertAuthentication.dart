import 'package:json_annotation/json_annotation.dart';
import 'AuthMethodConstants.dart';

part 'CertAuthentication.g.dart';

@JsonSerializable()
class CertAuthentication {
  /// The domain name the authentication data belongs to.
  String name;
  
/// The authentication method.
  AuthMethodConstants method;
  
/// The dns entry for dns based authentication.
  String dns;
  
/// The filename for file based authentication.
  String fileName;
  
/// The content for file based authentication.
  String fileContent;
  
/// The approver addresses for email based authentication.
  List<String> approverEmails;
  
/// Activates automatic provisioning of the zone for dns based authentication.
  bool provisioning;
  
  
  
  CertAuthentication({
  	this.name,
  	this.method,
  	this.dns,
  	this.fileName,
  	this.fileContent,
  	this.approverEmails,
  	this.provisioning,
  });

  @override
  String toString() {
    return 'CertAuthentication[name=$name, method=$method, dns=$dns, fileName=$fileName, fileContent=$fileContent, approverEmails=$approverEmails, provisioning=$provisioning, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory CertAuthentication.fromJson(Map<String, dynamic> json) =>
      _$CertAuthenticationFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$CertAuthenticationToJson(this);
  
}

