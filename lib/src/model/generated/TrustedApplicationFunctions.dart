import 'package:json_annotation/json_annotation.dart';

part 'TrustedApplicationFunctions.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class TrustedApplicationFunctions {
  /// The allowed functions for the trusted application.
  List<String> functionCodes;

  TrustedApplicationFunctions({
    this.functionCodes,
  });

  @override
  String toString() {
    return 'TrustedApplicationFunctions[functionCodes=$functionCodes, ]';
  }

  ///
  /// Json to Location object
  ///
  factory TrustedApplicationFunctions.fromJson(Map<String, dynamic> json) =>
      _$TrustedApplicationFunctionsFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$TrustedApplicationFunctionsToJson(this);
}
