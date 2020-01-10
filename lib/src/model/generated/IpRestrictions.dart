import 'package:json_annotation/json_annotation.dart';
import 'IpRestriction.dart';

part 'IpRestrictions.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class IpRestrictions {
  /// A list of ip restrictions
  List<IpRestriction> acls;

  IpRestrictions({
    this.acls,
  });

  @override
  String toString() {
    return 'IpRestrictions[acls=$acls, ]';
  }

  ///
  /// Json to Location object
  ///
  factory IpRestrictions.fromJson(Map<String, dynamic> json) =>
      _$IpRestrictionsFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$IpRestrictionsToJson(this);
}
