import 'package:json_annotation/json_annotation.dart';

part 'ContactJpExtensions.g.dart';

@JsonSerializable()
class ContactJpExtensions {
  /// The first name.
  String first;
  
/// The last name.
  String last;
  
/// The organization.
  String organization;
  
/// The first line of the address.
  String adressLine1;
  
/// The second line of the address.
  String adressLine2;
  
/// The third line of the address.
  String adressLine3;
  
  
  
  ContactJpExtensions({
  	this.first,
  	this.last,
  	this.organization,
  	this.adressLine1,
  	this.adressLine2,
  	this.adressLine3,
  });

  @override
  String toString() {
    return 'ContactJpExtensions[first=$first, last=$last, organization=$organization, adressLine1=$adressLine1, adressLine2=$adressLine2, adressLine3=$adressLine3, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory ContactJpExtensions.fromJson(Map<String, dynamic> json) =>
      _$ContactJpExtensionsFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ContactJpExtensionsToJson(this);
  
}

