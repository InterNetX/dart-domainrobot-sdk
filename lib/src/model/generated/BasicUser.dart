import 'package:json_annotation/json_annotation.dart';

part 'BasicUser.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class BasicUser {
  /// The context.
  int context;

  /// The user name.
  String user;

  BasicUser({
    this.context,
    this.user,
  });

  @override
  String toString() {
    return 'BasicUser[context=$context, user=$user, ]';
  }

  ///
  /// Json to Location object
  ///
  factory BasicUser.fromJson(Map<String, dynamic> json) =>
      _$BasicUserFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$BasicUserToJson(this);
}
