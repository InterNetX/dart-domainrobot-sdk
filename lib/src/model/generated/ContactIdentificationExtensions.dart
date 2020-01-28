import 'package:json_annotation/json_annotation.dart';

part 'ContactIdentificationExtensions.g.dart';

@JsonSerializable()
class ContactIdentificationExtensions {
  /// The number.
  String number;
  
/// The authority.
  String authority;
  
/// The date of issue.
  DateTime dateOfIssue;
  
/// The valid till date.
  DateTime validTill;
  
  
  
  ContactIdentificationExtensions({
  	this.number,
  	this.authority,
  	this.dateOfIssue,
  	this.validTill,
  });

  @override
  String toString() {
    return 'ContactIdentificationExtensions[number=$number, authority=$authority, dateOfIssue=$dateOfIssue, validTill=$validTill, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory ContactIdentificationExtensions.fromJson(Map<String, dynamic> json) =>
      _$ContactIdentificationExtensionsFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ContactIdentificationExtensionsToJson(this);
  
}

