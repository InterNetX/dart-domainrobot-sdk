import 'dart:convert';

import 'package:basic_utils/basic_utils.dart';
import 'package:basic_utils/src/model/exception/HttpResponseException.dart';
import 'package:dart_domainrobot_sdk/dart_domainrobot_sdk.dart';
import 'package:dart_domainrobot_sdk/src/model/exception/DomainRobotApiException.dart';
import 'package:dart_domainrobot_sdk/src/model/generated/JsonResponseData.dart';

///
/// Abstract class for all clients
///
abstract class AbstractDomainRobotClient {
  /// The DomainRobot API username
  final String _userName;

  /// The DomainRobot API user password
  final String _password;

  /// The DomainRobot API user context
  final String _context;

  /// The DomainRobot API base url
  final String baseUrl;

  /// The package version
  final String version;

  AbstractDomainRobotClient(this._userName, this._password, this._context,
      this.baseUrl, this.version);

  ///
  /// Method for converting a [HttpResponseException] to a [DomainRobotApiResponse].
  ///
  static void handleException(Exception e) {
    HttpResponseException ex = e;
    Map<String, dynamic> data = json.decode(ex.body);
    var response = JsonResponseData.fromJson(data);
    throw DomainRobotApiException(response.messages.elementAt(0).text,
        response.messages.elementAt(0).code,
        stid: response.stid, body: response, headers: ex.headers);
  }

  ///
  ///
  /// Builds the basic headers that are needed by the domainrobot api.
  ///
  /// If the given [headers] are not null, they will be merged with the basic headers needed by the domainrobot api.
  ///
  /// For all possible headers look at the DomainRobotHeaders.dart file.
  ///
  Map<String, String> mergeHeaders(Map<String, String> headers) {
    headers ??= {};
    var auth = base64.encode(utf8.encode('$_userName:$_password'));
    auth = 'Basic $auth';
    headers.putIfAbsent('authorization', () => auth);
    if (_context != null) {
      headers.putIfAbsent(DOMAINROBOT_HEADER_CONTEXT, () => _context);
    }
    headers.putIfAbsent('Accept', () => 'application/json');
    headers.putIfAbsent('User-Agent', () => 'DartDomainrobotSdk/$version');
    return headers;
  }
}
