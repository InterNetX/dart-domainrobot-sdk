import 'package:json_annotation/json_annotation.dart';
import 'AutoRenewStatusConstants.dart';
import 'BasicUser.dart';
import 'CancelationStatusConstants.dart';
import 'Contact.dart';
import 'DNSCheck.dart';
import 'DNSSec.dart';
import 'DNSSecJob.dart';
import 'DomainActionConstants.dart';
import 'DomainExtensions.dart';
import 'DomainServices.dart';
import 'NameServer.dart';
import 'ParkingProviderConstants.dart';
import 'RddsOptInConstants.dart';
import 'RegistryStatusConstants.dart';
import 'TimePeriod.dart';
import 'Zone.dart';

part 'Domain.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class Domain {
  /// The created date.
  DateTime created;

  /// The updated date.
  DateTime updated;

  /// The owner of the object.
  BasicUser owner;

  /// The updater of the object.
  BasicUser updater;

  /// The name of the domain.
  String name;

  /// The unicode domain name
  String idn;

  /// The nic member label.
  String nicMemberLabel;

  /// The registry status.
  RegistryStatusConstants registryStatus;

  /// The nameservers.
  List<NameServer> nameServers;

  /// NSentry is only be provided for .DE. If NSentry is used, nameServers is not allowed.
  List<String> nameServerEntries;

  /// The renew period in years.
  TimePeriod period;

  /// Enable trustee service for the domain.
  bool trustee;

  /// Enable privacy service for the domain.
  bool privacy;

  /// The authinfo.
  String authinfo;

  /// Enable domainsafe.
  bool domainsafe;

  /// The parking provider.
  ParkingProviderConstants parking;

  /// The domain extensions.
  DomainExtensions extensions;

  /// The logId
  int logId;

  /// An additional nameserver check will be carried out.
  DNSCheck nsCheck;

  /// Some TLDs require a confirmation of the “Terms and Conditions of Registration.
  bool confirmOrder;

  /// Confirms the consent of the domainowner for the changes. Required for gTLDs and new gTLDs when changing the name, the email address or the organization of the domain owner.
  bool confirmOwnerConsent;

  /// Ignore whois.
  bool ignoreWhois;

  /// A custom field. Can only be updated via PUT /domain/{name}/_comment. Requires appropriate ACLs.
  String comment;

  /// Enable utomatic creation of the www subdomain.
  bool includeWWW;

  /// Enable include wildcard.
  bool includeWildcard;

  /// The registrar status.
  RegistryStatusConstants registrarStatus;

  /// The registrar status reason.
  String registrarStatusReason;

  /// Remove cancelation.
  bool removeCancelation;

  /// AutodnsSecJob
  DNSSecJob autodnsSecJob;

  /// The priceclass for the registration of the domain.
  String priceClass;

  /// The priceclass for the renew of the domain.
  String priceClassRenew;

  /// The abuse email.
  String abuseEmail;

  /// The general request mail.
  String generalRequestEmail;

  /// The privacy plus mail.
  String privacyPlusMail;

  /// Enable privacy plus.
  bool privacyPlus;

  /// The nameserver group.
  String nameServerGroup;

  /// Enables the whois output to show redacted contacts.
  RddsOptInConstants rddsOptIn;

  /// Adds pending services like BackupMX and MailProxy.
  DomainServices servicesAdd;

  /// Removes pending services like BackupMX and MailProxy.
  DomainServices servicesRem;

  /// The owner contact.
  Contact ownerc;

  /// The administrative contact.
  Contact adminc;

  /// The technical contact reference.
  Contact techc;

  /// The dns contact.
  Contact zonec;

  /// The expire date of the domain.
  DateTime expire;

  /// The payable date of the domain.
  DateTime payable;

  /// The last action.
  DomainActionConstants action;

  /// Enables or disables automatic DNSSEC for certain name servers (e.g. NodeSecure).
  bool autoDnssec;

  /// Indicates whether DNSSEC is enabled for the domain or not.
  bool dnssec;

  /// Domain has an matching certificate.
  bool validCertificate;

  /// The cancelation status.
  CancelationStatusConstants cancelationStatus;

  /// The autorenew status.
  AutoRenewStatusConstants autoRenewStatus;

  /// Submits the key material to the registry. If the list is empty, the key material is deleted at the registry. If the key is omitted during an update, the data is retained.
  List<DNSSec> dnssecData;

  /// The zone to create.
  Zone zone;

  Domain({
    this.created,
    this.updated,
    this.owner,
    this.updater,
    this.name,
    this.idn,
    this.nicMemberLabel,
    this.registryStatus,
    this.nameServers,
    this.nameServerEntries,
    this.period,
    this.trustee,
    this.privacy,
    this.authinfo,
    this.domainsafe,
    this.parking,
    this.extensions,
    this.logId,
    this.nsCheck,
    this.confirmOrder,
    this.confirmOwnerConsent,
    this.ignoreWhois,
    this.comment,
    this.includeWWW,
    this.includeWildcard,
    this.registrarStatus,
    this.registrarStatusReason,
    this.removeCancelation,
    this.autodnsSecJob,
    this.priceClass,
    this.priceClassRenew,
    this.abuseEmail,
    this.generalRequestEmail,
    this.privacyPlusMail,
    this.privacyPlus,
    this.nameServerGroup,
    this.rddsOptIn,
    this.servicesAdd,
    this.servicesRem,
    this.ownerc,
    this.adminc,
    this.techc,
    this.zonec,
    this.expire,
    this.payable,
    this.action,
    this.autoDnssec,
    this.dnssec,
    this.validCertificate,
    this.cancelationStatus,
    this.autoRenewStatus,
    this.dnssecData,
    this.zone,
  });

  @override
  String toString() {
    return 'Domain[created=$created, updated=$updated, owner=$owner, updater=$updater, name=$name, idn=$idn, nicMemberLabel=$nicMemberLabel, registryStatus=$registryStatus, nameServers=$nameServers, nameServerEntries=$nameServerEntries, period=$period, trustee=$trustee, privacy=$privacy, authinfo=$authinfo, domainsafe=$domainsafe, parking=$parking, extensions=$extensions, logId=$logId, nsCheck=$nsCheck, confirmOrder=$confirmOrder, confirmOwnerConsent=$confirmOwnerConsent, ignoreWhois=$ignoreWhois, comment=$comment, includeWWW=$includeWWW, includeWildcard=$includeWildcard, registrarStatus=$registrarStatus, registrarStatusReason=$registrarStatusReason, removeCancelation=$removeCancelation, autodnsSecJob=$autodnsSecJob, priceClass=$priceClass, priceClassRenew=$priceClassRenew, abuseEmail=$abuseEmail, generalRequestEmail=$generalRequestEmail, privacyPlusMail=$privacyPlusMail, privacyPlus=$privacyPlus, nameServerGroup=$nameServerGroup, rddsOptIn=$rddsOptIn, servicesAdd=$servicesAdd, servicesRem=$servicesRem, ownerc=$ownerc, adminc=$adminc, techc=$techc, zonec=$zonec, expire=$expire, payable=$payable, action=$action, autoDnssec=$autoDnssec, dnssec=$dnssec, validCertificate=$validCertificate, cancelationStatus=$cancelationStatus, autoRenewStatus=$autoRenewStatus, dnssecData=$dnssecData, zone=$zone, ]';
  }

  ///
  /// Json to Location object
  ///
  factory Domain.fromJson(Map<String, dynamic> json) => _$DomainFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$DomainToJson(this);
}
