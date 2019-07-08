import 'package:json_annotation/json_annotation.dart';

part 'VatType.g.dart';

@JsonSerializable(includeIfNull: false)
class VatType {
  String label;

  VatType({this.label});

  /*
   * Json to Location object
   */
  factory VatType.fromJson(Map<String, dynamic> json) =>
      _$VatTypeFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$VatTypeToJson(this);
}
