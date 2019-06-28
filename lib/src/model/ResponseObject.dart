import 'package:json_annotation/json_annotation.dart';

part 'ResponseObject.g.dart';

@JsonSerializable()
class ResponseObject {
  String type;
  String value;
  int summary;
  dynamic data;

  ResponseObject(this.type, this.value, this.summary, this.data);

  /*
   * Json to ResponseObject object
   */
  factory ResponseObject.fromJson(Map<String, dynamic> json) =>
      _$ResponseObjectFromJson(json);

  /*
   * ResponseObject object to json
   */
  Map<String, dynamic> toJson() => _$ResponseObjectToJson(this);
}
