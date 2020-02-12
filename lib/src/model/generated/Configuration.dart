import 'package:json_annotation/json_annotation.dart';

part 'Configuration.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class Configuration {
  Configuration();

  @override
  String toString() {
    return 'Configuration[]';
  }

  ///
  /// Json to Location object
  ///
  factory Configuration.fromJson(Map<String, dynamic> json) =>
      _$ConfigurationFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ConfigurationToJson(this);
}
