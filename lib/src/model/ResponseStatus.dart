import 'package:json_annotation/json_annotation.dart';

part 'ResponseStatus.g.dart';

@JsonSerializable()
class ResponseStatus {
  String code;
  String text;
  String type;

  ResponseStatus(this.code, this.text, this.type);

  /*
   * Json to ResponseStatus object
   */
  factory ResponseStatus.fromJson(Map<String, dynamic> json) =>
      _$ResponseStatusFromJson(json);

  /*
   * ResponseStatus object to json
   */
  Map<String, dynamic> toJson() => _$ResponseStatusToJson(this);
}
