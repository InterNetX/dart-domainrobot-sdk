import 'package:json_annotation/json_annotation.dart';
import 'UserProfile.dart';

part 'UserProfileViews.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class UserProfileViews {
  List<UserProfile> profiles;

  UserProfileViews({
    this.profiles,
  });

  @override
  String toString() {
    return 'UserProfileViews[profiles=$profiles, ]';
  }

  ///
  /// Json to Location object
  ///
  factory UserProfileViews.fromJson(Map<String, dynamic> json) =>
      _$UserProfileViewsFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$UserProfileViewsToJson(this);
}
