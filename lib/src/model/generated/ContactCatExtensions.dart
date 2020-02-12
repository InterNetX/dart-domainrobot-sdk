import 'package:json_annotation/json_annotation.dart';

part 'ContactCatExtensions.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class ContactCatExtensions {
  /// The statement of intended use for the domain name.
  String intendedUse;

  ContactCatExtensions({
    this.intendedUse,
  });

  @override
  String toString() {
    return 'ContactCatExtensions[intendedUse=$intendedUse, ]';
  }

  ///
  /// Json to Location object
  ///
  factory ContactCatExtensions.fromJson(Map<String, dynamic> json) =>
      _$ContactCatExtensionsFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ContactCatExtensionsToJson(this);
}
