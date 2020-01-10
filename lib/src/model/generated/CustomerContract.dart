import 'package:json_annotation/json_annotation.dart';
import 'GenericLabelEntity.dart';

part 'CustomerContract.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class CustomerContract {
  /// The created date.
  DateTime created;

  /// The updated date.
  DateTime updated;

  /// The contract.
  GenericLabelEntity contract;

  /// The notices.
  String notice;

  /// The ticketing number if available.
  String ticketNumber;

  CustomerContract({
    this.created,
    this.updated,
    this.contract,
    this.notice,
    this.ticketNumber,
  });

  @override
  String toString() {
    return 'CustomerContract[created=$created, updated=$updated, contract=$contract, notice=$notice, ticketNumber=$ticketNumber, ]';
  }

  ///
  /// Json to Location object
  ///
  factory CustomerContract.fromJson(Map<String, dynamic> json) =>
      _$CustomerContractFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$CustomerContractToJson(this);
}
