import 'package:json_annotation/json_annotation.dart';
import 'IpRestrictionTypeConstants.dart';

part 'IpRestriction.g.dart';

@JsonSerializable()
class IpRestriction {
  /// The created date.
  DateTime created;
  
/// The updated date.
  DateTime updated;
  
/// The restriction level
  IpRestrictionTypeConstants type;
  
/// A net address or ip address
  String address;
  
  
  
  IpRestriction({
  	this.created,
  	this.updated,
  	this.type,
  	this.address,
  });

  @override
  String toString() {
    return 'IpRestriction[created=$created, updated=$updated, type=$type, address=$address, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory IpRestriction.fromJson(Map<String, dynamic> json) =>
      _$IpRestrictionFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$IpRestrictionToJson(this);
  
}

