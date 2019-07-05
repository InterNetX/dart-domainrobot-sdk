import 'package:json_annotation/json_annotation.dart';

part 'TrustedApplicationFunctions.g.dart';

@JsonSerializable()
class TrustedApplicationFunctions {

  List<String> functionCodes;

  TrustedApplicationFunctions({this.functionCodes,});

  /*
   * Json to Location object
   */
  factory TrustedApplicationFunctions.fromJson(Map<String, dynamic> json) =>
      _$TrustedApplicationFunctionsFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$TrustedApplicationFunctionsToJson(this);
}
