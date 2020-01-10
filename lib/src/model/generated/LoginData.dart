import 'package:json_annotation/json_annotation.dart';

part 'LoginData.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class LoginData {
  /// The context.
  int context;

  /// The password.
  String password;

  /// The one time password in case of 2fa authentication.
  String token;

  /// The user name.
  String user;

  LoginData({
    this.context,
    this.password,
    this.token,
    this.user,
  });

  @override
  String toString() {
    return 'LoginData[context=$context, password=$password, token=$token, user=$user, ]';
  }

  ///
  /// Json to Location object
  ///
  factory LoginData.fromJson(Map<String, dynamic> json) =>
      _$LoginDataFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$LoginDataToJson(this);
}
