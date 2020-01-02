import 'package:json_annotation/json_annotation.dart';

part 'NameServer.g.dart';

@JsonSerializable(includeIfNull: false)
class NameServer {
  String name;

  NameServer({this.name});

  /*
   * Json to Location object
   */
  factory NameServer.fromJson(Map<String, dynamic> json) =>
      _$NameServerFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$NameServerToJson(this);
}
