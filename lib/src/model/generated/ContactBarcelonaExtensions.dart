import 'package:json_annotation/json_annotation.dart';

part 'ContactBarcelonaExtensions.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class ContactBarcelonaExtensions {
  /// The statement of intended use for the domain name.
  String intededUse;

  ContactBarcelonaExtensions({
    this.intededUse,
  });

  @override
  String toString() {
    return 'ContactBarcelonaExtensions[intededUse=$intededUse, ]';
  }

  ///
  /// Json to Location object
  ///
  factory ContactBarcelonaExtensions.fromJson(Map<String, dynamic> json) =>
      _$ContactBarcelonaExtensionsFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ContactBarcelonaExtensionsToJson(this);
}
