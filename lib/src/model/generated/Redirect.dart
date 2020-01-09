import 'package:json_annotation/json_annotation.dart';
import 'BasicUser.dart';
import 'RedirectModeConstants.dart';
import 'RedirectTypeConstants.dart';

part 'Redirect.g.dart';

@JsonSerializable()
class Redirect {
  /// The created date.
  DateTime created;
  
/// The updated date.
  DateTime updated;
  
/// The owner of the object.
  BasicUser owner;
  
/// The updater of the object.
  BasicUser updater;
  
/// The domain to be redirected. Enter the domain with or without \"www\".
  String source;
  
/// The URL of the target domain. Enter the domain without \"http://\"
  String target;
  
/// Redirect type
  RedirectTypeConstants type;
  
/// Redirect mode
  RedirectModeConstants mode;
  
/// The domain, which the redirect belongs.
  String domain;
  
/// Lorem Ipsum
  String title;
  
/// Lorem Ipsum
  List<String> backups;
  
/// The IDN version of the domain to be redirected. Enter the domain with or without \"www\".
  String sourceIdn;
  
/// The IDN version of the URL of the target domain. Enter the domain without \"http://\"
  String targetIdn;
  
/// The last dns connection.
  DateTime lastSeen;
  
  
  
  Redirect({
  	this.created,
  	this.updated,
  	this.owner,
  	this.updater,
  	this.source,
  	this.target,
  	this.type,
  	this.mode,
  	this.domain,
  	this.title,
  	this.backups,
  	this.sourceIdn,
  	this.targetIdn,
  	this.lastSeen,
  });

  @override
  String toString() {
    return 'Redirect[created=$created, updated=$updated, owner=$owner, updater=$updater, source=$source, target=$target, type=$type, mode=$mode, domain=$domain, title=$title, backups=$backups, sourceIdn=$sourceIdn, targetIdn=$targetIdn, lastSeen=$lastSeen, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory Redirect.fromJson(Map<String, dynamic> json) =>
      _$RedirectFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$RedirectToJson(this);
  
}

