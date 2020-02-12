import 'package:json_annotation/json_annotation.dart';

part 'ContactJobsExtensions.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class ContactJobsExtensions {
  /// Contact is the administrative contact with the permission to act as an independent agent / recruiter on behalf of the listed registrant.
  bool adminType;

  /// Title of the domain contact in the organization.
  String contactTitle;

  /// Choose whether the contact is is a member of the Human Resource Organization
  bool hrMember;

  /// The Industry class.
  int industryClass;

  /// The Website.
  String website;

  ContactJobsExtensions({
    this.adminType,
    this.contactTitle,
    this.hrMember,
    this.industryClass,
    this.website,
  });

  @override
  String toString() {
    return 'ContactJobsExtensions[adminType=$adminType, contactTitle=$contactTitle, hrMember=$hrMember, industryClass=$industryClass, website=$website, ]';
  }

  ///
  /// Json to Location object
  ///
  factory ContactJobsExtensions.fromJson(Map<String, dynamic> json) =>
      _$ContactJobsExtensionsFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ContactJobsExtensionsToJson(this);
}
