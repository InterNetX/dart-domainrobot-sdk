import 'package:json_annotation/json_annotation.dart';

part 'GenericObject.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class GenericObject {
  /// The type of the object.
  String type;

  /// The value of the object.
  String value;

  GenericObject({
    this.type,
    this.value,
  });

  @override
  String toString() {
    return 'GenericObject[type=$type, value=$value, ]';
  }

  ///
  /// Json to Location object
  ///
  factory GenericObject.fromJson(Map<String, dynamic> json) =>
      _$GenericObjectFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$GenericObjectToJson(this);
}
