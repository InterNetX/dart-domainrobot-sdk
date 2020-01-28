import 'package:json_annotation/json_annotation.dart';
import 'AuEligibilityIdTypeConstants.dart';
import 'AuEligibilityTypeConstants.dart';
import 'AuRegistrantIdTypeConstants.dart';

part 'ContactAuExtensions.g.dart';

@JsonSerializable()
class ContactAuExtensions {
  /// The corresponding ID number for the eligibility name if applicable, if in doubt just use the same details as your Registrant ID.
  String eligibilityId;
  
/// The type of Eligibility ID.
  AuEligibilityIdTypeConstants eligibilityIdType;
  
///  This field is usually optional and whether it is required is determined by your policy reason for the domain registration, if in doubt just use the same details as your Registrant Name.
  String eligibilityName;
  
/// The type of entity that the registrant is.
  AuEligibilityTypeConstants eligibilityType;
  
/// Reason for eligibility.
  int policyReason;
  
/// Australian Business Number or Registered Business Number.
  String registrantId;
  
/// Concerns the Registrant ID which you have selected in the Registrant ID form field.
  AuRegistrantIdTypeConstants registrantIdType;
  
/// The registrants name.
  String registrantName;
  
  
  
  ContactAuExtensions({
  	this.eligibilityId,
  	this.eligibilityIdType,
  	this.eligibilityName,
  	this.eligibilityType,
  	this.policyReason,
  	this.registrantId,
  	this.registrantIdType,
  	this.registrantName,
  });

  @override
  String toString() {
    return 'ContactAuExtensions[eligibilityId=$eligibilityId, eligibilityIdType=$eligibilityIdType, eligibilityName=$eligibilityName, eligibilityType=$eligibilityType, policyReason=$policyReason, registrantId=$registrantId, registrantIdType=$registrantIdType, registrantName=$registrantName, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory ContactAuExtensions.fromJson(Map<String, dynamic> json) =>
      _$ContactAuExtensionsFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ContactAuExtensionsToJson(this);
  
}

