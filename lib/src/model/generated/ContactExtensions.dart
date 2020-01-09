import 'package:json_annotation/json_annotation.dart';
import 'ContactAeroExtensions.dart';
import 'ContactAuExtensions.dart';
import 'ContactBankExtensions.dart';
import 'ContactBarcelonaExtensions.dart';
import 'ContactCaExtensions.dart';
import 'ContactCatExtensions.dart';
import 'ContactGeneralExtensions.dart';
import 'ContactHkExtensions.dart';
import 'ContactItExtensions.dart';
import 'ContactJobsExtensions.dart';
import 'ContactJpExtensions.dart';
import 'ContactLuxeExtensions.dart';
import 'ContactMadridExtensions.dart';
import 'ContactNzExtensions.dart';
import 'ContactRoExtensions.dart';
import 'ContactRuExtensions.dart';
import 'ContactSportExtensions.dart';
import 'ContactSwissExtensions.dart';
import 'ContactUkExtensions.dart';
import 'ContactXxxExtensions.dart';

part 'ContactExtensions.g.dart';

@JsonSerializable()
class ContactExtensions {
  /// The .aero contact extensions.
  ContactAeroExtensions aero;
  
/// The .au contact extensions.
  ContactAuExtensions au;
  
/// The .cat contact extensions.
  ContactCatExtensions cat;
  
/// The .jobs contact extensions.
  ContactJobsExtensions jobs;
  
/// The .it contact extensions.
  ContactItExtensions it;
  
/// The .jp contact extensions.
  ContactJpExtensions jp;
  
/// The .xxx contact extensions.
  ContactXxxExtensions xxx;
  
/// The .hk contact extensions.
  ContactHkExtensions hk;
  
/// The .bank contact extensions.
  ContactBankExtensions bank;
  
/// The .swiss contact extensions.
  ContactSwissExtensions swiss;
  
/// The .ru contact extensions.
  ContactRuExtensions ru;
  
/// The .uk contact extensions.
  ContactUkExtensions uk;
  
/// The .ca contact extensions.
  ContactCaExtensions ca;
  
/// The .ro contact extensions.
  ContactRoExtensions ro;
  
/// The .barcelona contact extensions.
  ContactBarcelonaExtensions barcelona;
  
/// The general contact extensions.
  ContactGeneralExtensions general;
  
/// The .nz contact extensions
  ContactNzExtensions nz;
  
/// The .sport contact extensions.
  ContactSportExtensions sport;
  
/// The .luxe contact extensions.
  ContactLuxeExtensions luxe;
  
/// The .madrid contact extensions.
  ContactMadridExtensions madrid;
  
  
  
  ContactExtensions({
  	this.aero,
  	this.au,
  	this.cat,
  	this.jobs,
  	this.it,
  	this.jp,
  	this.xxx,
  	this.hk,
  	this.bank,
  	this.swiss,
  	this.ru,
  	this.uk,
  	this.ca,
  	this.ro,
  	this.barcelona,
  	this.general,
  	this.nz,
  	this.sport,
  	this.luxe,
  	this.madrid,
  });

  @override
  String toString() {
    return 'ContactExtensions[aero=$aero, au=$au, cat=$cat, jobs=$jobs, it=$it, jp=$jp, xxx=$xxx, hk=$hk, bank=$bank, swiss=$swiss, ru=$ru, uk=$uk, ca=$ca, ro=$ro, barcelona=$barcelona, general=$general, nz=$nz, sport=$sport, luxe=$luxe, madrid=$madrid, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory ContactExtensions.fromJson(Map<String, dynamic> json) =>
      _$ContactExtensionsFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ContactExtensionsToJson(this);
  
}

