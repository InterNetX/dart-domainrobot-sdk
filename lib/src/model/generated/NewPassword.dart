import 'package:json_annotation/json_annotation.dart';

part 'NewPassword.g.dart';

@JsonSerializable()
class NewPassword {
  /// The user
  String user;
  
/// The context of the user
  int context;
  
/// The tan
  String tan;
  
/// The password
  String password;
  
/// The disguised email to which the TAN is to be sent.
  String email;
  
/// The disguised mobilephone number to which the TAN is to be sent.
  String mobile;
  
/// The tan methods available for the user
  List<String> tanMethods;
  
/// The token
  String token;
  
/// The selected method
  String method;
  
  
  
  NewPassword({
  	this.user,
  	this.context,
  	this.tan,
  	this.password,
  	this.email,
  	this.mobile,
  	this.tanMethods,
  	this.token,
  	this.method,
  });

  @override
  String toString() {
    return 'NewPassword[user=$user, context=$context, tan=$tan, password=$password, email=$email, mobile=$mobile, tanMethods=$tanMethods, token=$token, method=$method, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory NewPassword.fromJson(Map<String, dynamic> json) =>
      _$NewPasswordFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$NewPasswordToJson(this);
  
}

