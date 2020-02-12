import 'package:json_annotation/json_annotation.dart';
import 'UserProfileFlag.dart';

part 'UserProfile.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class UserProfile {
  /// The mode of the entry
  UserProfileFlag flag;

  /// The  user profile key
  String key;

  /// The value of the key
  String value;

  /// The read only entry
  bool readonly;

  UserProfile({
    this.flag,
    this.key,
    this.value,
    this.readonly,
  });

  @override
  String toString() {
    return 'UserProfile[flag=$flag, key=$key, value=$value, readonly=$readonly, ]';
  }

  ///
  /// Json to Location object
  ///
  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$UserProfileToJson(this);
}
