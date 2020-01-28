import 'package:json_annotation/json_annotation.dart';
import 'GenericStatusConstants.dart';
import 'Message.dart';

part 'ContactVerificationMessage.g.dart';

@JsonSerializable()
class ContactVerificationMessage {
  /// The created date.
  DateTime created;
  
/// The updated date.
  DateTime updated;
  
/// the email of the VerificationMessage
  Message mail;
  
/// the status of the VerificationMessage
  GenericStatusConstants status;
  
  
  
  ContactVerificationMessage({
  	this.created,
  	this.updated,
  	this.mail,
  	this.status,
  });

  @override
  String toString() {
    return 'ContactVerificationMessage[created=$created, updated=$updated, mail=$mail, status=$status, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory ContactVerificationMessage.fromJson(Map<String, dynamic> json) =>
      _$ContactVerificationMessageFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ContactVerificationMessageToJson(this);
  
}

