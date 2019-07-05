import 'package:json_annotation/json_annotation.dart';

part 'Application.g.dart';

@JsonSerializable()
class Application {
  String name;
  List<String> functionCodes;
  String created;
  String updated;

  Application({this.name, this.functionCodes, this.created, this.updated});

  /*
   * Json to Location object
   */
  factory Application.fromJson(Map<String, dynamic> json) =>
      _$ApplicationFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$ApplicationToJson(this);
}
