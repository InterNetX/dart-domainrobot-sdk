import '../DomainRobotApiResponse.dart';

///
/// A exception containing information about the error from the api.
///
class DomainRobotApiException implements Exception {
  final String message;
  final DomainRobotApiResponse body;
  final String errorCode;
  final String stid;
  final Map<String, String> headers;

  DomainRobotApiException(this.message, this.errorCode,
      {this.stid, this.body, this.headers});

  @override
  String toString() => stid + ' ' + errorCode + ' : ' + message;
}
