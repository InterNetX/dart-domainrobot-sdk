import 'package:json_annotation/json_annotation.dart';

part 'User.g.dart';

@JsonSerializable(includeIfNull: false)
class User {
  int context;
  String user;

  User({this.user, this.context});

  /*
   * Json to Location object
   */
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
