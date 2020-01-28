import 'package:json_annotation/json_annotation.dart';
import 'BasicUser.dart';
import 'MainIp.dart';
import 'NameServer.dart';
import 'NameserverActionConstants.dart';
import 'ResourceRecord.dart';
import 'Soa.dart';

part 'ZoneBasePatchRequest.g.dart';

@JsonSerializable()
class ZoneBasePatchRequest {
  /// The created date.
  DateTime created;
  
/// The updated date.
  DateTime updated;
  
/// Zone name
  String origin;
  
/// The idn version of the origin.
  String idn;
  
/// Only for ns_action: \"primary\"  and \"complete\"
  Soa soa;
  
/// Enables dnssec
  bool dnssec;
  
/// The name of the name server group, if the zone is managed by
  String nameServerGroup;
  
/// Allow AXFR
  bool allowTransfer;
  
/// The owner of the object
  BasicUser owner;
  
/// The updating user of the object
  BasicUser updater;
  
/// The id of the related log-entry.
  int logId;
  
/// A custom field. Can only be updated via PUT /zone/{name}/{nameserver}/_comment. Requires appropriate ACLs.
  String comment;
  
/// true if the domain is represented in the domain safe
  bool domainsafe;
  
/// Nameserver, the zone is copied from via AXFR (for zone_import)
  String source;
  
/// System name server to look up the zone to copy
  String sourceVirtualHostname;
  
/// Adds new zone garnts to the zone
  List<String> zoneGrantsAdd;
  
/// Removes the zone garnts if exists.
  List<String> zoneGrantsRem;
  
/// List of name servers
  List<NameServer> nameServers;
  
/// IP address of the zone (A record)
  MainIp main;
  
/// Automatic generation of resource records \"www\"
  bool wwwInclude;
  
/// The first nameserver managed by the system
  String virtualNameServer;
  
/// The free text records.
  List<String> freeText;
  
/// Additional nameserver check is proceeded
  NameserverActionConstants action;
  
/// The grants where transfer (axfr) can be done from.
  List<String> grants;
  
/// The resource records.
  List<ResourceRecord> resourceRecords;
  
/// The resource object identifier of the zone
  int roid;
  
/// Adds new zone records to the extistings
  List<ResourceRecord> resourceRecordsAdd;
  
/// Removes the zone records if exists.
  List<ResourceRecord> resourceRecordsRem;
  
  
  
  ZoneBasePatchRequest({
  	this.created,
  	this.updated,
  	this.origin,
  	this.idn,
  	this.soa,
  	this.dnssec,
  	this.nameServerGroup,
  	this.allowTransfer,
  	this.owner,
  	this.updater,
  	this.logId,
  	this.comment,
  	this.domainsafe,
  	this.source,
  	this.sourceVirtualHostname,
  	this.zoneGrantsAdd,
  	this.zoneGrantsRem,
  	this.nameServers,
  	this.main,
  	this.wwwInclude,
  	this.virtualNameServer,
  	this.freeText,
  	this.action,
  	this.grants,
  	this.resourceRecords,
  	this.roid,
  	this.resourceRecordsAdd,
  	this.resourceRecordsRem,
  });

  @override
  String toString() {
    return 'ZoneBasePatchRequest[created=$created, updated=$updated, origin=$origin, idn=$idn, soa=$soa, dnssec=$dnssec, nameServerGroup=$nameServerGroup, allowTransfer=$allowTransfer, owner=$owner, updater=$updater, logId=$logId, comment=$comment, domainsafe=$domainsafe, source=$source, sourceVirtualHostname=$sourceVirtualHostname, zoneGrantsAdd=$zoneGrantsAdd, zoneGrantsRem=$zoneGrantsRem, nameServers=$nameServers, main=$main, wwwInclude=$wwwInclude, virtualNameServer=$virtualNameServer, freeText=$freeText, action=$action, grants=$grants, resourceRecords=$resourceRecords, roid=$roid, resourceRecordsAdd=$resourceRecordsAdd, resourceRecordsRem=$resourceRecordsRem, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory ZoneBasePatchRequest.fromJson(Map<String, dynamic> json) =>
      _$ZoneBasePatchRequestFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ZoneBasePatchRequestToJson(this);
  
}

