import 'package:json_annotation/json_annotation.dart';

part 'ContactAeroExtensions.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class ContactAeroExtensions {
  /// Aero Authentication ID.
  String ensAuthId;

  /// Aero ENS key.
  String ensKey;

  ContactAeroExtensions({
    this.ensAuthId,
    this.ensKey,
  });

  @override
  String toString() {
    return 'ContactAeroExtensions[ensAuthId=$ensAuthId, ensKey=$ensKey, ]';
  }

  ///
  /// Json to Location object
  ///
  factory ContactAeroExtensions.fromJson(Map<String, dynamic> json) =>
      _$ContactAeroExtensionsFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ContactAeroExtensionsToJson(this);
}
