import 'package:json_annotation/json_annotation.dart';

part 'ContactNzExtensions.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class ContactNzExtensions {
  /// The irpo.
  bool irpo;

  ContactNzExtensions({
    this.irpo,
  });

  @override
  String toString() {
    return 'ContactNzExtensions[irpo=$irpo, ]';
  }

  ///
  /// Json to Location object
  ///
  factory ContactNzExtensions.fromJson(Map<String, dynamic> json) =>
      _$ContactNzExtensionsFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ContactNzExtensionsToJson(this);
}
