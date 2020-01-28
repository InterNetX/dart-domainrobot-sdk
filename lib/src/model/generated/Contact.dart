import 'package:json_annotation/json_annotation.dart';
import 'BasicUser.dart';
import 'ContactExtensions.dart';
import 'ContactProtectionConstants.dart';
import 'ContactReference.dart';
import 'ContactTypeConstants.dart';
import 'GenericStatusConstants.dart';

part 'Contact.g.dart';

@JsonSerializable()
class Contact {
  /// The created date.
  DateTime created;
  
/// The updated date.
  DateTime updated;
  
/// The unique identifier of the contact
  int id;
  
/// The owner of the object.
  BasicUser owner;
  
/// The updating user of the object.
  BasicUser updater;
  
/// The unique alias of the contact
  String alias;
  
/// The type of the contact
  ContactTypeConstants type;
  
/// The name of the organization
  String organization;
  
/// The title of the contact
  String title;
  
/// The city of the contact
  String city;
  
/// The country of the contact
  String country;
  
/// The local country state of the contact
  String state;
  
/// The email of the contact
  String email;
  
/// The protection of the contact
  ContactProtectionConstants protection;
  
/// The sip of the contact
  String sip;
  
/// The remarks of the contact
  List<String> remarks;
  
/// The nic references of the contact
  bool domainsafe;
  
/// ???
  bool confirmOwnerConsent;
  
/// The comment for the contact
  String comment;
  
/// The verification status of the contact
  GenericStatusConstants verification;
  
/// The first name of the contact
  String fname;
  
/// The last name of the contact
  String lname;
  
/// The address of the contact.
  List<String> address;
  
/// The pcode of the contact
  String pcode;
  
/// The phone number of the contact
  String phone;
  
/// The fax number of the contact
  String fax;
  
/// The nic references of the contact
  List<ContactReference> nicRef;
  
/// The contact extensions.
  ContactExtensions extensions;
  
  
  
  Contact({
  	this.created,
  	this.updated,
  	this.id,
  	this.owner,
  	this.updater,
  	this.alias,
  	this.type,
  	this.organization,
  	this.title,
  	this.city,
  	this.country,
  	this.state,
  	this.email,
  	this.protection,
  	this.sip,
  	this.remarks,
  	this.domainsafe,
  	this.confirmOwnerConsent,
  	this.comment,
  	this.verification,
  	this.fname,
  	this.lname,
  	this.address,
  	this.pcode,
  	this.phone,
  	this.fax,
  	this.nicRef,
  	this.extensions,
  });

  @override
  String toString() {
    return 'Contact[created=$created, updated=$updated, id=$id, owner=$owner, updater=$updater, alias=$alias, type=$type, organization=$organization, title=$title, city=$city, country=$country, state=$state, email=$email, protection=$protection, sip=$sip, remarks=$remarks, domainsafe=$domainsafe, confirmOwnerConsent=$confirmOwnerConsent, comment=$comment, verification=$verification, fname=$fname, lname=$lname, address=$address, pcode=$pcode, phone=$phone, fax=$fax, nicRef=$nicRef, extensions=$extensions, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ContactToJson(this);
  
}

