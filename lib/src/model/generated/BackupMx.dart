import 'package:json_annotation/json_annotation.dart';
import 'BasicUser.dart';

part 'BackupMx.g.dart';

@JsonSerializable()
class BackupMx {
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
  
  
  
  BackupMx({
  	this.domain,
  	this.idn,
  	this.created,
  	this.updated,
  	this.owner,
  	this.updater,
  });

  @override
  String toString() {
    return 'BackupMx[domain=$domain, idn=$idn, created=$created, updated=$updated, owner=$owner, updater=$updater, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory BackupMx.fromJson(Map<String, dynamic> json) =>
      _$BackupMxFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$BackupMxToJson(this);
  
}

