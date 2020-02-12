import 'package:json_annotation/json_annotation.dart';

part 'UserDetails.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class UserDetails {
  /// The organization.
  String organization;

  /// The mobile phone number.
  String passwordResetMobile;

  /// The email address for the verification of the password reset process.
  String passwordResetVerifyEmail;

  /// The email address for the password reset tan.
  String passwordResetEmail;

  /// The first name.
  String fname;

  /// The last name.
  String lname;

  UserDetails({
    this.organization,
    this.passwordResetMobile,
    this.passwordResetVerifyEmail,
    this.passwordResetEmail,
    this.fname,
    this.lname,
  });

  @override
  String toString() {
    return 'UserDetails[organization=$organization, passwordResetMobile=$passwordResetMobile, passwordResetVerifyEmail=$passwordResetVerifyEmail, passwordResetEmail=$passwordResetEmail, fname=$fname, lname=$lname, ]';
  }

  ///
  /// Json to Location object
  ///
  factory UserDetails.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$UserDetailsToJson(this);
}
