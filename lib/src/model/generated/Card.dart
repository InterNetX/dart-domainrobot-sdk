import 'package:json_annotation/json_annotation.dart';
import 'CardStatus.dart';
import 'CreditCardVendor.dart';

part 'Card.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class Card {
  /// The created date.
  DateTime created;

  /// The updated date.
  DateTime updated;

  /// The credit card vendor
  CreditCardVendor type;

  /// The actual status of the credit card
  CardStatus status;

  /// The valid from date
  DateTime validFrom;

  /// The valid to date
  DateTime validTo;

  Card({
    this.created,
    this.updated,
    this.type,
    this.status,
    this.validFrom,
    this.validTo,
  });

  @override
  String toString() {
    return 'Card[created=$created, updated=$updated, type=$type, status=$status, validFrom=$validFrom, validTo=$validTo, ]';
  }

  ///
  /// Json to Location object
  ///
  factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$CardToJson(this);
}
