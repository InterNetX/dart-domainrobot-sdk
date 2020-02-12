import 'package:json_annotation/json_annotation.dart';
import 'BasicUser.dart';
import 'Claims.dart';
import 'Configuration.dart';
import 'Id4MeAgent.dart';
import 'IdentityStatus.dart';

part 'Id4meIdentity.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class Id4meIdentity {
  /// The created date.
  DateTime created;

  /// The updated date.
  DateTime updated;

  /// The owner of the object.
  BasicUser owner;

  /// The updater of the object.
  BasicUser updater;

  /// The ID4ME agent
  Id4MeAgent agent;

  /// Expiration of verification
  DateTime verifyExpire;

  /// Additional information
  Configuration addons;

  /// The generated magic link
  String magicLink;

  /// The initial claims
  Claims claims;

  /// Enables showing claims.
  bool showClaims;

  /// Url to redirect to passwort reset
  String resetUrl;

  /// time when reset url expire
  DateTime resetUrlExpire;

  /// Fully qualified domain name
  String name;

  /// status
  IdentityStatus status;

  /// The language.
  String language;

  /// DNS text records
  List<String> record;

  Id4meIdentity({
    this.created,
    this.updated,
    this.owner,
    this.updater,
    this.agent,
    this.verifyExpire,
    this.addons,
    this.magicLink,
    this.claims,
    this.showClaims,
    this.resetUrl,
    this.resetUrlExpire,
    this.name,
    this.status,
    this.language,
    this.record,
  });

  @override
  String toString() {
    return 'Id4meIdentity[created=$created, updated=$updated, owner=$owner, updater=$updater, agent=$agent, verifyExpire=$verifyExpire, addons=$addons, magicLink=$magicLink, claims=$claims, showClaims=$showClaims, resetUrl=$resetUrl, resetUrlExpire=$resetUrlExpire, name=$name, status=$status, language=$language, record=$record, ]';
  }

  ///
  /// Json to Location object
  ///
  factory Id4meIdentity.fromJson(Map<String, dynamic> json) =>
      _$Id4meIdentityFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$Id4meIdentityToJson(this);
}
