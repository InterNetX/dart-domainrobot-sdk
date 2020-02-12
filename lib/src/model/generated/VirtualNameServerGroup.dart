import 'package:json_annotation/json_annotation.dart';
import 'BasicUser.dart';
import 'PhysicalNameServerGroup.dart';
import 'VirtualNameServer.dart';

part 'VirtualNameServerGroup.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class VirtualNameServerGroup {
  /// The created date.
  DateTime created;

  /// The updated date.
  DateTime updated;

  /// The owner of the object.
  BasicUser owner;

  /// The updating user of the object.
  BasicUser updater;

  /// The custom label for the group
  String name;

  /// The useDefaultIps
  bool useDefaultIps;

  /// The name servers of the group.
  List<VirtualNameServer> nameServers;

  /// The custom label for the group
  PhysicalNameServerGroup systemNameServerGroup;

  VirtualNameServerGroup({
    this.created,
    this.updated,
    this.owner,
    this.updater,
    this.name,
    this.useDefaultIps,
    this.nameServers,
    this.systemNameServerGroup,
  });

  @override
  String toString() {
    return 'VirtualNameServerGroup[created=$created, updated=$updated, owner=$owner, updater=$updater, name=$name, useDefaultIps=$useDefaultIps, nameServers=$nameServers, systemNameServerGroup=$systemNameServerGroup, ]';
  }

  ///
  /// Json to Location object
  ///
  factory VirtualNameServerGroup.fromJson(Map<String, dynamic> json) =>
      _$VirtualNameServerGroupFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$VirtualNameServerGroupToJson(this);
}
