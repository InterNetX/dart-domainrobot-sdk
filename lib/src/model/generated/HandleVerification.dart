import 'package:json_annotation/json_annotation.dart';
import 'BasicUser.dart';
import 'Contact.dart';
import 'ContactVerificationDomain.dart';
import 'ContactVerificationMessage.dart';
import 'InetAddress.dart';

part 'HandleVerification.g.dart';

@JsonSerializable()
class HandleVerification {
  /// The created date.
  DateTime created;
  
/// The updated date.
  DateTime updated;
  
/// The owner of the object.
  BasicUser owner;
  
/// The updater of the object.
  BasicUser updater;
  
/// the reference of the Verification
  String reference;
  
/// the messageSend date of the Verification
  DateTime messageSend;
  
/// the confirmed date of the Verification
  DateTime confirmed;
  
/// the confirmIp of the Verification
  InetAddress confirmIp;
  
/// the failed date of the Verification
  DateTime failed;
  
/// the domains of the Verification
  List<ContactVerificationDomain> domain;
  
/// the messages of the Verification
  List<ContactVerificationMessage> verificationMail;
  
/// the comment of the Verification
  String comment;
  
/// the action of the Verification
  String action;
  
/// the contact of the Verification
  Contact handle;
  
  
  
  HandleVerification({
  	this.created,
  	this.updated,
  	this.owner,
  	this.updater,
  	this.reference,
  	this.messageSend,
  	this.confirmed,
  	this.confirmIp,
  	this.failed,
  	this.domain,
  	this.verificationMail,
  	this.comment,
  	this.action,
  	this.handle,
  });

  @override
  String toString() {
    return 'HandleVerification[created=$created, updated=$updated, owner=$owner, updater=$updater, reference=$reference, messageSend=$messageSend, confirmed=$confirmed, confirmIp=$confirmIp, failed=$failed, domain=$domain, verificationMail=$verificationMail, comment=$comment, action=$action, handle=$handle, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory HandleVerification.fromJson(Map<String, dynamic> json) =>
      _$HandleVerificationFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$HandleVerificationToJson(this);
  
}

