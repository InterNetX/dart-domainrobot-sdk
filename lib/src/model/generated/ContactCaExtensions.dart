import 'package:json_annotation/json_annotation.dart';
import 'CiraCprConstants.dart';

part 'ContactCaExtensions.g.dart';

@JsonSerializable()
class ContactCaExtensions {
  /// The cira cpr.
  CiraCprConstants cpr;
  
/// The agreement version.
  double agreementVersion;
  
/// The originating ip.
  String originatingIp;
  
/// The official representative.
  String officialRepresentative;
  
/// The trustee percentage.
  double trusteePercentage;
  
  
  
  ContactCaExtensions({
  	this.cpr,
  	this.agreementVersion,
  	this.originatingIp,
  	this.officialRepresentative,
  	this.trusteePercentage,
  });

  @override
  String toString() {
    return 'ContactCaExtensions[cpr=$cpr, agreementVersion=$agreementVersion, originatingIp=$originatingIp, officialRepresentative=$officialRepresentative, trusteePercentage=$trusteePercentage, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory ContactCaExtensions.fromJson(Map<String, dynamic> json) =>
      _$ContactCaExtensionsFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ContactCaExtensionsToJson(this);
  
}

