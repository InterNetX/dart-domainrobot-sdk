import 'package:json_annotation/json_annotation.dart';

part 'Phone.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class Phone {
  Phone();

  @override
  String toString() {
    return 'Phone[]';
  }

  ///
  /// Json to Location object
  ///
  factory Phone.fromJson(Map<String, dynamic> json) => _$PhoneFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$PhoneToJson(this);
}
