import 'package:json_annotation/json_annotation.dart';

part 'IpRestriction.g.dart';

@JsonSerializable()
class IpRestriction {
  String address;
  String type;
  String created;
  String updated;

  IpRestriction({this.address, this.type, this.created, this.updated});

  /*
   * Json to Location object
   */
  factory IpRestriction.fromJson(Map<String, dynamic> json) =>
      _$IpRestrictionFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$IpRestrictionToJson(this);
}
