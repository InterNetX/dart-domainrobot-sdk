import 'package:json_annotation/json_annotation.dart';
import 'BasicUser.dart';

part 'SslContact.g.dart';

@JsonSerializable()
class SslContact {
  /// The created date.
  DateTime created;
  
/// The updated date.
  DateTime updated;
  
/// The first name of the contact
  String fname;
  
/// The last name of the contact
  String lname;
  
/// The phone number of the contact
  String phone;
  
/// The fax number of the contact
  String fax;
  
/// The email of the contact
  String email;
  
/// The title of the contact
  String title;
  
/// The name of the organization
  String organization;
  
/// The address of the contact.
  List<String> address;
  
/// The pcode of the contact
  String pcode;
  
/// The city of the contact
  String city;
  
/// The country of the contact
  String country;
  
/// The local country state of the contact
  String state;
  
/// The owner of the object
  BasicUser owner;
  
/// The updating using of the object
  BasicUser updater;
  
/// Unique identifier of the object
  int id;
  
  
  
  SslContact({
  	this.created,
  	this.updated,
  	this.fname,
  	this.lname,
  	this.phone,
  	this.fax,
  	this.email,
  	this.title,
  	this.organization,
  	this.address,
  	this.pcode,
  	this.city,
  	this.country,
  	this.state,
  	this.owner,
  	this.updater,
  	this.id,
  });

  @override
  String toString() {
    return 'SslContact[created=$created, updated=$updated, fname=$fname, lname=$lname, phone=$phone, fax=$fax, email=$email, title=$title, organization=$organization, address=$address, pcode=$pcode, city=$city, country=$country, state=$state, owner=$owner, updater=$updater, id=$id, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory SslContact.fromJson(Map<String, dynamic> json) =>
      _$SslContactFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$SslContactToJson(this);
  
}

