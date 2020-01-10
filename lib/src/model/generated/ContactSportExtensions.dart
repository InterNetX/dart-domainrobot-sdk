import 'package:json_annotation/json_annotation.dart';

part 'ContactSportExtensions.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class ContactSportExtensions {
  /// The intended use.
  String intendedUse;

  ContactSportExtensions({
    this.intendedUse,
  });

  @override
  String toString() {
    return 'ContactSportExtensions[intendedUse=$intendedUse, ]';
  }

  ///
  /// Json to Location object
  ///
  factory ContactSportExtensions.fromJson(Map<String, dynamic> json) =>
      _$ContactSportExtensionsFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ContactSportExtensionsToJson(this);
}
