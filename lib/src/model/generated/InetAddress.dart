import 'package:json_annotation/json_annotation.dart';

part 'InetAddress.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class InetAddress {
  InetAddress();

  @override
  String toString() {
    return 'InetAddress[]';
  }

  ///
  /// Json to Location object
  ///
  factory InetAddress.fromJson(Map<String, dynamic> json) =>
      _$InetAddressFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$InetAddressToJson(this);
}
