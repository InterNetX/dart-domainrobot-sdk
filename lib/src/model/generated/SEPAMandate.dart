import 'package:json_annotation/json_annotation.dart';
import 'InetAddress.dart';

part 'SEPAMandate.g.dart';

@JsonSerializable()
class SEPAMandate {
  /// The created date.
  DateTime created;
  
/// The updated date.
  DateTime updated;
  
/// The sepa mandate reference
  String reference;
  
/// The date of the confirm signature
  DateTime confirmSignature;
  
/// The address of the confirm signature
  InetAddress confirmIp;
  
/// The user agent of the confirm signature
  String confirmUseragent;
  
/// Flag for indicating if the confirm data has been checked
  bool confirmChecked;
  
/// Date after the mandate will be expired
  DateTime expire;
  
/// A list of historized sepa mandates
  List<SEPAMandate> histories;
  
/// The holder of the bank account
  String accountHolder;
  
/// The bank iban
  String iban;
  
/// The bank bic
  String bic;
  
  
  
  SEPAMandate({
  	this.created,
  	this.updated,
  	this.reference,
  	this.confirmSignature,
  	this.confirmIp,
  	this.confirmUseragent,
  	this.confirmChecked,
  	this.expire,
  	this.histories,
  	this.accountHolder,
  	this.iban,
  	this.bic,
  });

  @override
  String toString() {
    return 'SEPAMandate[created=$created, updated=$updated, reference=$reference, confirmSignature=$confirmSignature, confirmIp=$confirmIp, confirmUseragent=$confirmUseragent, confirmChecked=$confirmChecked, expire=$expire, histories=$histories, accountHolder=$accountHolder, iban=$iban, bic=$bic, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory SEPAMandate.fromJson(Map<String, dynamic> json) =>
      _$SEPAMandateFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$SEPAMandateToJson(this);
  
}

