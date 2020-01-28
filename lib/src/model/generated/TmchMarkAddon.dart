import 'package:json_annotation/json_annotation.dart';

part 'TmchMarkAddon.g.dart';

@JsonSerializable()
class TmchMarkAddon {
  
  String courtName;
  

  DateTime protection;
  

  String courtProtectionCountry;
  

  String courtReference;
  

  String treatyTitle;
  

  DateTime treatyExecution;
  

  DateTime trademarkRegistration;
  

  String trademarkClassification;
  

  DateTime trademarkExpire;
  

  String trademarkNumber;
  

  String trademarkJurisdiction;
  

  String parentReference;
  
  
  
  TmchMarkAddon({
  	this.courtName,
  	this.protection,
  	this.courtProtectionCountry,
  	this.courtReference,
  	this.treatyTitle,
  	this.treatyExecution,
  	this.trademarkRegistration,
  	this.trademarkClassification,
  	this.trademarkExpire,
  	this.trademarkNumber,
  	this.trademarkJurisdiction,
  	this.parentReference,
  });

  @override
  String toString() {
    return 'TmchMarkAddon[courtName=$courtName, protection=$protection, courtProtectionCountry=$courtProtectionCountry, courtReference=$courtReference, treatyTitle=$treatyTitle, treatyExecution=$treatyExecution, trademarkRegistration=$trademarkRegistration, trademarkClassification=$trademarkClassification, trademarkExpire=$trademarkExpire, trademarkNumber=$trademarkNumber, trademarkJurisdiction=$trademarkJurisdiction, parentReference=$parentReference, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory TmchMarkAddon.fromJson(Map<String, dynamic> json) =>
      _$TmchMarkAddonFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$TmchMarkAddonToJson(this);
  
}

