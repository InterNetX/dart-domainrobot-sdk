import 'package:json_annotation/json_annotation.dart';

part 'BillingObjectLimit.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class BillingObjectLimit {
  /// The created date.
  DateTime created;

  /// The updated date.
  DateTime updated;

  String articleLabel;

  int limitSelf;

  int limitChildren;

  String articleTypeLabel;

  /// The current count if available
  int count;

  BillingObjectLimit({
    this.created,
    this.updated,
    this.articleLabel,
    this.limitSelf,
    this.limitChildren,
    this.articleTypeLabel,
    this.count,
  });

  @override
  String toString() {
    return 'BillingObjectLimit[created=$created, updated=$updated, articleLabel=$articleLabel, limitSelf=$limitSelf, limitChildren=$limitChildren, articleTypeLabel=$articleTypeLabel, count=$count, ]';
  }

  ///
  /// Json to Location object
  ///
  factory BillingObjectLimit.fromJson(Map<String, dynamic> json) =>
      _$BillingObjectLimitFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$BillingObjectLimitToJson(this);
}
