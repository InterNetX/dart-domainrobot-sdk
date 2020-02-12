import 'package:json_annotation/json_annotation.dart';
import 'BasicUser.dart';
import 'TransferAnswer.dart';

part 'TransferOut.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class TransferOut {
  /// The created date.
  DateTime created;

  /// The updated date.
  DateTime updated;

  /// The owner of the object.
  BasicUser owner;

  /// The updating user of the object.
  BasicUser updater;

  /// The domain name.
  String domain;

  /// The gaining registrar.
  String gainingRegistrar;

  /// The loosing registrar.
  String loosingRegistrar;

  /// The start date.
  DateTime start;

  /// The reminder date.
  DateTime reminder;

  /// The auto ack date.
  DateTime autoAck;

  /// The auto nack date.
  DateTime autoNack;

  /// The end date.
  DateTime end;

  /// Autoanswer active.
  bool autoAnswer;

  /// The recipient.
  String recipient;

  /// The mailserver.
  String mailserver;

  /// The delivered mailserver.
  String deliveredMailserver;

  /// The delivered date.
  DateTime delivered;

  /// The ctid.
  String transaction;

  /// The type of the transfer.
  TransferAnswer type;

  /// The reason.
  int nackReason;

  TransferOut({
    this.created,
    this.updated,
    this.owner,
    this.updater,
    this.domain,
    this.gainingRegistrar,
    this.loosingRegistrar,
    this.start,
    this.reminder,
    this.autoAck,
    this.autoNack,
    this.end,
    this.autoAnswer,
    this.recipient,
    this.mailserver,
    this.deliveredMailserver,
    this.delivered,
    this.transaction,
    this.type,
    this.nackReason,
  });

  @override
  String toString() {
    return 'TransferOut[created=$created, updated=$updated, owner=$owner, updater=$updater, domain=$domain, gainingRegistrar=$gainingRegistrar, loosingRegistrar=$loosingRegistrar, start=$start, reminder=$reminder, autoAck=$autoAck, autoNack=$autoNack, end=$end, autoAnswer=$autoAnswer, recipient=$recipient, mailserver=$mailserver, deliveredMailserver=$deliveredMailserver, delivered=$delivered, transaction=$transaction, type=$type, nackReason=$nackReason, ]';
  }

  ///
  /// Json to Location object
  ///
  factory TransferOut.fromJson(Map<String, dynamic> json) =>
      _$TransferOutFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$TransferOutToJson(this);
}
