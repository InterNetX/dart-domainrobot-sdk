import 'package:json_annotation/json_annotation.dart';
import 'BasicUser.dart';
import 'Contact.dart';
import 'DomainPreregAddon.dart';
import 'DomainPreregStatusConstants.dart';
import 'NameServer.dart';
import 'PreregConfig.dart';
import 'RegistryStatusConstants.dart';
import 'TmchMark.dart';

part 'DomainPrereg.g.dart';

@JsonSerializable()
class DomainPrereg {
  /// The created date.
  DateTime created;
  
/// The updated date.
  DateTime updated;
  
/// The owner of the object.
  BasicUser owner;
  
/// The updater of the object.
  BasicUser updater;
  
/// The owner contact.
  Contact ownerc;
  
/// The administrative contact.
  Contact adminc;
  
/// The technical contact reference.
  Contact techc;
  
/// The dns contact.
  Contact zonec;
  
/// The name of the domain.
  String name;
  
/// The authinfo.
  String authinfo;
  
/// The nameservers.
  List<NameServer> nameServers;
  
/// The nameserver entries.
  List<String> nameServerEntries;
  
/// The preregistration status of the domain.
  DomainPreregStatusConstants status;
  
/// The preregistration extensions.
  DomainPreregAddon extension;
  
/// The unique order reference.
  String orderReference;
  
/// The tmchmark.
  TmchMark tmchMark;
  
/// The preregistration configuration.
  PreregConfig preregConfig;
  
/// The idn version of the name.
  String idn;
  
/// The confirmation date.
  DateTime confirmed;
  
/// Trustee active or not.
  bool trustee;
  
/// The domain created date.
  DateTime domainCreated;
  
/// The domain expire date.
  DateTime domainExpire;
  
/// The registry status.
  RegistryStatusConstants registryStatus;
  
/// Recommended
  bool recommended;
  
  
  
  DomainPrereg({
  	this.created,
  	this.updated,
  	this.owner,
  	this.updater,
  	this.ownerc,
  	this.adminc,
  	this.techc,
  	this.zonec,
  	this.name,
  	this.authinfo,
  	this.nameServers,
  	this.nameServerEntries,
  	this.status,
  	this.extension,
  	this.orderReference,
  	this.tmchMark,
  	this.preregConfig,
  	this.idn,
  	this.confirmed,
  	this.trustee,
  	this.domainCreated,
  	this.domainExpire,
  	this.registryStatus,
  	this.recommended,
  });

  @override
  String toString() {
    return 'DomainPrereg[created=$created, updated=$updated, owner=$owner, updater=$updater, ownerc=$ownerc, adminc=$adminc, techc=$techc, zonec=$zonec, name=$name, authinfo=$authinfo, nameServers=$nameServers, nameServerEntries=$nameServerEntries, status=$status, extension=$extension, orderReference=$orderReference, tmchMark=$tmchMark, preregConfig=$preregConfig, idn=$idn, confirmed=$confirmed, trustee=$trustee, domainCreated=$domainCreated, domainExpire=$domainExpire, registryStatus=$registryStatus, recommended=$recommended, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory DomainPrereg.fromJson(Map<String, dynamic> json) =>
      _$DomainPreregFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$DomainPreregToJson(this);
  
}

