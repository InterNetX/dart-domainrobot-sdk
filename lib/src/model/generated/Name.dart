import 'package:json_annotation/json_annotation.dart';

part 'Name.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class Name {
  Name();

  @override
  String toString() {
    return 'Name[]';
  }

  ///
  /// Json to Location object
  ///
  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$NameToJson(this);
}
