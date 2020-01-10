import 'package:json_annotation/json_annotation.dart';

part 'ContactXxxExtensions.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class ContactXxxExtensions {
  /// Membership ID (token) for the .XXX community.
  String membershipID;

  /// XXX community membership available or not.
  bool nonResolverDomain;

  ContactXxxExtensions({
    this.membershipID,
    this.nonResolverDomain,
  });

  @override
  String toString() {
    return 'ContactXxxExtensions[membershipID=$membershipID, nonResolverDomain=$nonResolverDomain, ]';
  }

  ///
  /// Json to Location object
  ///
  factory ContactXxxExtensions.fromJson(Map<String, dynamic> json) =>
      _$ContactXxxExtensionsFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ContactXxxExtensionsToJson(this);
}
