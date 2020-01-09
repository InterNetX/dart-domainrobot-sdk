import 'package:json_annotation/json_annotation.dart';
import 'BasicUser.dart';
import 'DomainMonitoringSetup.dart';
import 'Phone.dart';

part 'DomainMonitoring.g.dart';

@JsonSerializable()
class DomainMonitoring {
  /// The created date.
  DateTime created;
  
/// The updated date.
  DateTime updated;
  
/// The owner of the object.
  BasicUser owner;
  
/// The updating user of the object.
  BasicUser updater;
  
/// The name of the domain.
  String name;
  
/// The idn version of the domain.
  String idn;
  
/// The notification mobile phone numbers.
  List<Phone> notificationMobiles;
  
/// The ocval
  bool ocval;
  
/// The cancelation
  bool cancelation;
  
/// The removed
  bool removed;
  
/// The monitoringSetups
  List<DomainMonitoringSetup> monitoringSetups;
  
/// The notification email-addresses.
  List<String> notificationEmails;
  
  
  
  DomainMonitoring({
  	this.created,
  	this.updated,
  	this.owner,
  	this.updater,
  	this.name,
  	this.idn,
  	this.notificationMobiles,
  	this.ocval,
  	this.cancelation,
  	this.removed,
  	this.monitoringSetups,
  	this.notificationEmails,
  });

  @override
  String toString() {
    return 'DomainMonitoring[created=$created, updated=$updated, owner=$owner, updater=$updater, name=$name, idn=$idn, notificationMobiles=$notificationMobiles, ocval=$ocval, cancelation=$cancelation, removed=$removed, monitoringSetups=$monitoringSetups, notificationEmails=$notificationEmails, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory DomainMonitoring.fromJson(Map<String, dynamic> json) =>
      _$DomainMonitoringFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$DomainMonitoringToJson(this);
  
}

