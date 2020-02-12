import 'package:json_annotation/json_annotation.dart';
import 'BasicUser.dart';
import 'BillingObjectLimit.dart';
import 'BillingStatus.dart';
import 'PeriodicBilling.dart';
import 'TimePeriod.dart';
import 'UserAcl.dart';

part 'Subscription.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class Subscription {
  /// The created date.
  DateTime created;

  /// The updated date.
  DateTime updated;

  /// The owner of the object.
  BasicUser owner;

  /// The updating user of the object.
  BasicUser updater;

  /// The actual status of the entry, active means ok.
  BillingStatus status;

  /// The name of the subscription, e.g. the contract number
  String object;

  /// The human readable name of the subscription, e.g. the name of a package
  String description;

  /// The period used by the subscription, e.g. 1 month
  TimePeriod period;

  /// The article type label of the subscription, e.g. domain
  String articleTypeLabel;

  /// The article label of the subscription, e.g. backup_mx
  String articleLabel;

  /// The items of the subscription
  List<PeriodicBilling> item;

  /// The limits of the package.
  List<BillingObjectLimit> limits;

  /// The acls of the package
  List<UserAcl> acls;

  /// The name variant, e.g nodesecure
  String variant;

  /// The businessCase of the subscription, e.g. create
  String businessCase;

  Subscription({
    this.created,
    this.updated,
    this.owner,
    this.updater,
    this.status,
    this.object,
    this.description,
    this.period,
    this.articleTypeLabel,
    this.articleLabel,
    this.item,
    this.limits,
    this.acls,
    this.variant,
    this.businessCase,
  });

  @override
  String toString() {
    return 'Subscription[created=$created, updated=$updated, owner=$owner, updater=$updater, status=$status, object=$object, description=$description, period=$period, articleTypeLabel=$articleTypeLabel, articleLabel=$articleLabel, item=$item, limits=$limits, acls=$acls, variant=$variant, businessCase=$businessCase, ]';
  }

  ///
  /// Json to Location object
  ///
  factory Subscription.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$SubscriptionToJson(this);
}
