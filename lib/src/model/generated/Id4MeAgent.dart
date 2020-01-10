import 'package:json_annotation/json_annotation.dart';
import 'BasicUser.dart';
import 'Configuration.dart';
import 'Id4MeAgentStatus.dart';
import 'VhostCertificate.dart';

part 'Id4MeAgent.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class Id4MeAgent {
  /// The created date.
  DateTime created;

  /// The updated date.
  DateTime updated;

  /// The owner of the object.
  BasicUser owner;

  /// The updater of the object.
  BasicUser updater;

  /// External reference
  String externalReference;

  /// Virtual host with certificate data
  VhostCertificate certificate;

  /// Layout properties
  Configuration layoutAddon;

  /// Fully qualified domain name
  String name;

  /// Agent status
  Id4MeAgentStatus status;

  /// List of dns text records
  List<String> records;

  Id4MeAgent({
    this.created,
    this.updated,
    this.owner,
    this.updater,
    this.externalReference,
    this.certificate,
    this.layoutAddon,
    this.name,
    this.status,
    this.records,
  });

  @override
  String toString() {
    return 'Id4MeAgent[created=$created, updated=$updated, owner=$owner, updater=$updater, externalReference=$externalReference, certificate=$certificate, layoutAddon=$layoutAddon, name=$name, status=$status, records=$records, ]';
  }

  ///
  /// Json to Location object
  ///
  factory Id4MeAgent.fromJson(Map<String, dynamic> json) =>
      _$Id4MeAgentFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$Id4MeAgentToJson(this);
}
