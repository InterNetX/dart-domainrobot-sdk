import 'package:json_annotation/json_annotation.dart';

part 'AccountEntry.g.dart';

@JsonSerializable(includeIfNull: false)
class AccountEntry {
  String label;
  double amount;
  double vatAmount;
  List<Vat> vats;
  double netAmount;
  String currency;

  AccountEntry(
      {this.label,
      this.amount,
      this.vatAmount,
      this.vats,
      this.netAmount,
      this.currency});

  /*
   * Json to Location object
   */
  factory AccountEntry.fromJson(Map<String, dynamic> json) =>
      _$AccountEntryFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$AccountEntryToJson(this);
}
