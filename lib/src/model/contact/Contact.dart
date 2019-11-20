import 'package:dart_domainrobot_sdk/src/model/User.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Contact.g.dart';

@JsonSerializable(includeIfNull: false)
class Contact {
  int id;
  String type;
  String title;
  String fname;
  String lname;
  String organization;
  List<String> address;
  String city;
  String pcode;
  String country;
  String state;
  String email;
  String phone;
  String fax;
  String created;
  String updated;
  User owner;
  User updater;

  Contact(
      {this.id,
      this.type = "PERSON",
      this.title,
      this.fname,
      this.lname,
      this.organization,
      this.address,
      this.city,
      this.pcode,
      this.country,
      this.state,
      this.email,
      this.phone,
      this.fax,
      this.created,
      this.updated,
      this.owner,
      this.updater});

  /*
   * Json to Location object
   */
  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$ContactToJson(this);
}
