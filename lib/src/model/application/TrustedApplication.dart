import 'package:json_annotation/json_annotation.dart';

import '../User.dart';
import 'Application.dart';
import 'IpRestrictions.dart';
import 'TrustedApplicationFunctions.dart';

part 'TrustedApplication.g.dart';

@JsonSerializable()
class TrustedApplication {
  String uuid;
  String password;
  String device;
  String comment;
  User user;

  TrustedApplicationFunctions functions;
  Application application;
  IpRestrictions restrictions;
  String created;
  String updated;
  User owner;
  User updater;

  TrustedApplication(
      {this.uuid,
      this.password,
      this.device,
      this.comment,
      this.user,
      this.functions,
      this.application,
      this.restrictions,
      this.created,
      this.updated,
      this.owner,
      this.updater});
  /*
   * Json to Location object
   */
  factory TrustedApplication.fromJson(Map<String, dynamic> json) =>
      _$TrustedApplicationFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$TrustedApplicationToJson(this);
}
