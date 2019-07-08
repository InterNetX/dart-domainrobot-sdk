import 'package:json_annotation/json_annotation.dart';

part 'Custom.g.dart';

@JsonSerializable()
class Custom {
  String key;
  String value;

  Custom({this.key, this.value});

  /*
   * Json to Location object
   */
  factory Custom.fromJson(Map<String, dynamic> json) =>
      _$CustomFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$CustomToJson(this);
}
