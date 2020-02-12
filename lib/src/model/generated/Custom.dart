import 'package:json_annotation/json_annotation.dart';

part 'Custom.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class Custom {
  /// Lorem Ipsum
  String key;

  /// Lorem Ipsum
  String value;

  Custom({
    this.key,
    this.value,
  });

  @override
  String toString() {
    return 'Custom[key=$key, value=$value, ]';
  }

  ///
  /// Json to Location object
  ///
  factory Custom.fromJson(Map<String, dynamic> json) => _$CustomFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$CustomToJson(this);
}
