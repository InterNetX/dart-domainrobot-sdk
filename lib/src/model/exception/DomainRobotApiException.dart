import 'package:dart_domainrobot_sdk/src/model/generated/JsonResponseData.dart';

///
/// A exception containing information about the error from the api.
///
class DomainRobotApiException implements Exception {
  final String message;
  final String bodyAsString;
  final JsonResponseData body;
  final String errorCode;
  final String stid;
  final Map<String, String> headers;

  DomainRobotApiException(this.message, this.errorCode,
      {this.stid, this.body, this.headers, this.bodyAsString});

  @override
  String toString() => stid + ' ' + errorCode + ' : ' + message;
}
