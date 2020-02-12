import 'package:json_annotation/json_annotation.dart';
import 'BasicUser.dart';
import 'InetAddress.dart';
import 'Name.dart';

part 'VirtualNameServer.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class VirtualNameServer {
  /// The created date.
  DateTime created;

  /// The updated date.
  DateTime updated;

  /// The owner of the object.
  BasicUser owner;

  /// The updater of the object.
  BasicUser updater;

  /// Flag to show if the nameserver is active
  bool active;

  /// Host name of the nameserver.
  Name name;

  /// The mainAddress
  InetAddress mainAddress;

  /// The ip addresses.
  List<String> ipAddresses;

  VirtualNameServer({
    this.created,
    this.updated,
    this.owner,
    this.updater,
    this.active,
    this.name,
    this.mainAddress,
    this.ipAddresses,
  });

  @override
  String toString() {
    return 'VirtualNameServer[created=$created, updated=$updated, owner=$owner, updater=$updater, active=$active, name=$name, mainAddress=$mainAddress, ipAddresses=$ipAddresses, ]';
  }

  ///
  /// Json to Location object
  ///
  factory VirtualNameServer.fromJson(Map<String, dynamic> json) =>
      _$VirtualNameServerFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$VirtualNameServerToJson(this);
}
