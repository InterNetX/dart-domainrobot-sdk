import 'package:json_annotation/json_annotation.dart';
import 'AddressClaim.dart';
import 'GenderConstants.dart';
import 'Phone.dart';
import 'UrlEntity.dart';

part 'Claims.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class Claims {
  /// End-User's full name in displayable form including all name parts, possibly including titles and suffixes, ordered according to the End-User's locale and preferences.
  String name;

  /// Given name(s) or first name(s) of the End-User. Note that in some cultures, people can have multiple given names; all can be present, with the names being separated by space characters.
  String givenName;

  /// Surname(s) or last name(s) of the End-User. Note that in some cultures, people can have multiple family names or no family name; all can be present, with the names being separated by space characters
  String familyName;

  /// Middle name(s) of the End-User. Note that in some cultures, people can have multiple middle names; all can be present, with the names being separated by space characters. Also note that in some cultures, middle names are not used.
  String middleName;

  /// Casual name of the End-User that may or may not be the same as the given_name. For instance, a nickname value of Mike might be returned alongside a given_name value of Michael.
  String nickname;

  /// Shorthand name by which the End-User wishes to be referred to at the RP, such as janedoe or j.doe. This value MAY be any valid JSON string including special characters such as @, /, or whitespace
  String preferredUsername;

  /// URL of the End-User's profile page. The contents of this Web page SHOULD be about the End-User.
  UrlEntity profile;

  /// URL of the End-User's profile picture.
  UrlEntity picture;

  /// URL of the End-User's Web page or blog. This Web page SHOULD contain information published by the End-User or an organization that the End-User is affiliated with.
  UrlEntity website;

  /// End-user's preferred email address
  String email;

  /// True if the End-User's e-mail address has been verified; otherwise false.
  bool emailVerified;

  /// URL of the End-User's profile picture.
  GenderConstants gender;

  /// End-user's birth date, ISO 8601:2004 (YYYY-MM-DD)
  DateTime birthdate;

  /// End-User's zoneinfo.
  String zoneinfo;

  /// The locale.
  String locale;

  /// End-User's preferred telephone number. E.164 [E.164] is RECOMMENDED as the format of this Claim, for example, +1 (425) 555-1212 or +56 (2) 687 2400. .
  Phone phoneNumber;

  /// True if the End-User's phne number has been verified; otherwise false.
  bool phoneNumberVerified;

  /// End-user's address
  AddressClaim address;

  /// End-user's organization
  String organization;

  Claims({
    this.name,
    this.givenName,
    this.familyName,
    this.middleName,
    this.nickname,
    this.preferredUsername,
    this.profile,
    this.picture,
    this.website,
    this.email,
    this.emailVerified,
    this.gender,
    this.birthdate,
    this.zoneinfo,
    this.locale,
    this.phoneNumber,
    this.phoneNumberVerified,
    this.address,
    this.organization,
  });

  @override
  String toString() {
    return 'Claims[name=$name, givenName=$givenName, familyName=$familyName, middleName=$middleName, nickname=$nickname, preferredUsername=$preferredUsername, profile=$profile, picture=$picture, website=$website, email=$email, emailVerified=$emailVerified, gender=$gender, birthdate=$birthdate, zoneinfo=$zoneinfo, locale=$locale, phoneNumber=$phoneNumber, phoneNumberVerified=$phoneNumberVerified, address=$address, organization=$organization, ]';
  }

  ///
  /// Json to Location object
  ///
  factory Claims.fromJson(Map<String, dynamic> json) => _$ClaimsFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ClaimsToJson(this);
}
