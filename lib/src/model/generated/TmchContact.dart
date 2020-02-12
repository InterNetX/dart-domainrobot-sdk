import 'package:json_annotation/json_annotation.dart';
import 'TmchMarkHolderConstants.dart';

part 'TmchContact.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class TmchContact {
  TmchMarkHolderConstants entitlement;

  String name;

  String organization;

  String street;

  String city;

  String postalCode;

  String state;

  String country;

  String email;

  String phone;

  String fax;

  TmchContact({
    this.entitlement,
    this.name,
    this.organization,
    this.street,
    this.city,
    this.postalCode,
    this.state,
    this.country,
    this.email,
    this.phone,
    this.fax,
  });

  @override
  String toString() {
    return 'TmchContact[entitlement=$entitlement, name=$name, organization=$organization, street=$street, city=$city, postalCode=$postalCode, state=$state, country=$country, email=$email, phone=$phone, fax=$fax, ]';
  }

  ///
  /// Json to Location object
  ///
  factory TmchContact.fromJson(Map<String, dynamic> json) =>
      _$TmchContactFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$TmchContactToJson(this);
}
