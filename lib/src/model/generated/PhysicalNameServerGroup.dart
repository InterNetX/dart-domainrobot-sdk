import 'package:json_annotation/json_annotation.dart';

part 'PhysicalNameServerGroup.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class PhysicalNameServerGroup {
  /// The created date.
  DateTime created;

  /// The updated date.
  DateTime updated;

  /// The custom label for the group
  String name;

  /// The article label of the name server group, will be used for each created zone using these group
  String articleLabel;

  /// If the group supports dnssec
  bool dnssec;

  /// If the group contains statistical data for a zone
  bool statistic;

  PhysicalNameServerGroup({
    this.created,
    this.updated,
    this.name,
    this.articleLabel,
    this.dnssec,
    this.statistic,
  });

  @override
  String toString() {
    return 'PhysicalNameServerGroup[created=$created, updated=$updated, name=$name, articleLabel=$articleLabel, dnssec=$dnssec, statistic=$statistic, ]';
  }

  ///
  /// Json to Location object
  ///
  factory PhysicalNameServerGroup.fromJson(Map<String, dynamic> json) =>
      _$PhysicalNameServerGroupFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$PhysicalNameServerGroupToJson(this);
}
