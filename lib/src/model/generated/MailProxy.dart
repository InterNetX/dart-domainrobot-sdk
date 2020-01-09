import 'package:json_annotation/json_annotation.dart';
import 'BasicUser.dart';
import 'MailList.dart';
import 'ProtectionConstants.dart';
import 'SpamPolicy.dart';

part 'MailProxy.g.dart';

@JsonSerializable()
class MailProxy {
  /// The domain of the mail exchange to backup
  String domain;
  
/// The idn version of the domain.
  String idn;
  
/// The date of the creation
  DateTime created;
  
/// The date of the last updated
  DateTime updated;
  
/// The owner of the entry
  BasicUser owner;
  
/// The last updater of the entry
  BasicUser updater;
  
/// The hostname of the target mailserver
  String target;
  
/// email address of the administrator
  String admin;
  
/// The protection level
  ProtectionConstants protection;
  
/// The grey listing policy
  bool greylisting;
  
/// The virus options to use
  String virus;
  //enum virusEnum {  DISABLED,  QUARANTINE,  DISCARD,  ACCEPT,  };
/// The banned files options to use
  String bannedFiles;
  //enum bannedFilesEnum {  DISABLED,  QUARANTINE,  DISCARD,  ACCEPT,  };
/// The mail header options to use
  String header;
  //enum headerEnum {  DISABLED,  QUARANTINE,  DISCARD,  ACCEPT,  };
/// The spam policy options
  SpamPolicy spam;
  
/// The white listed email addresses
  MailList whitelist;
  
/// The black listed email addresses
  MailList blacklist;
  
/// The exculded listed email addresses
  MailList excludelist;
  
  
  
  MailProxy({
  	this.domain,
  	this.idn,
  	this.created,
  	this.updated,
  	this.owner,
  	this.updater,
  	this.target,
  	this.admin,
  	this.protection,
  	this.greylisting,
  	this.virus,
  	this.bannedFiles,
  	this.header,
  	this.spam,
  	this.whitelist,
  	this.blacklist,
  	this.excludelist,
  });

  @override
  String toString() {
    return 'MailProxy[domain=$domain, idn=$idn, created=$created, updated=$updated, owner=$owner, updater=$updater, target=$target, admin=$admin, protection=$protection, greylisting=$greylisting, virus=$virus, bannedFiles=$bannedFiles, header=$header, spam=$spam, whitelist=$whitelist, blacklist=$blacklist, excludelist=$excludelist, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory MailProxy.fromJson(Map<String, dynamic> json) =>
      _$MailProxyFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$MailProxyToJson(this);
  
}

