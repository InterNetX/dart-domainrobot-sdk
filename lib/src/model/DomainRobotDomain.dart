import 'package:dart_domainrobot_sdk/src/model/contact/Contact.dart';
import 'package:json_annotation/json_annotation.dart';

import 'NameServer.dart';

part 'DomainRobotDomain.g.dart';

@JsonSerializable(includeIfNull: false)
class DomainRobotDomain {
  String name;
  Contact ownerc;
  Contact adminc;
  Contact techc;
  Contact zonec;
  List<NameServer> nameservers;

  DomainRobotDomain(
      {this.name,
      this.zonec,
      this.adminc,
      this.ownerc,
      this.techc,
      this.nameservers});

  /*
   * Json to Location object
   */
  factory DomainRobotDomain.fromJson(Map<String, dynamic> json) =>
      _$DomainRobotDomainFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$DomainRobotDomainToJson(this);
}
