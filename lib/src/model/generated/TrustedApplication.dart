import 'package:json_annotation/json_annotation.dart';
import 'Application.dart';
import 'BasicUser.dart';
import 'IpRestrictions.dart';
import 'TrustedApplicationFunctions.dart';

part 'TrustedApplication.g.dart';

@JsonSerializable()
class TrustedApplication {
  /// The created date.
  DateTime created;
  
/// The updated date.
  DateTime updated;
  
/// The owner of the object.
  BasicUser owner;
  
/// The updating user of the object.
  BasicUser updater;
  
/// The user the trusted application belongs to.
  BasicUser user;
  
/// The unique identifier for the trusted application.
  String uuid;
  
/// The password for the trusted application.
  String password;
  
/// The kind of application.
  Application application;
  
/// The wrapper of the allowed functions for the trusted application.
  TrustedApplicationFunctions functions;
  
/// The wrapper of the ip restrictions for the trusted application.
  IpRestrictions restrictions;
  
/// The device, which uses the trusted app.
  String device;
  
/// A comment for the trusted application.
  String comment;
  
  
  
  TrustedApplication({
  	this.created,
  	this.updated,
  	this.owner,
  	this.updater,
  	this.user,
  	this.uuid,
  	this.password,
  	this.application,
  	this.functions,
  	this.restrictions,
  	this.device,
  	this.comment,
  });

  @override
  String toString() {
    return 'TrustedApplication[created=$created, updated=$updated, owner=$owner, updater=$updater, user=$user, uuid=$uuid, password=$password, application=$application, functions=$functions, restrictions=$restrictions, device=$device, comment=$comment, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory TrustedApplication.fromJson(Map<String, dynamic> json) =>
      _$TrustedApplicationFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$TrustedApplicationToJson(this);
  
}

