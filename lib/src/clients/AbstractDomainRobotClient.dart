import 'dart:convert';

import 'package:basic_utils/src/model/exception/HttpResponseException.dart';
import 'package:dart_domainrobot_sdk/src/model/DomainRobotApiResponse.dart';
import 'package:dart_domainrobot_sdk/src/model/exception/DomainRobotApiException.dart';

///
///
///
class AbstractDomainRobotClient {
  ///
  ///
  ///
  static void handleException(Exception e) {
    HttpResponseException ex = e;
    Map<String, dynamic> data = json.decode(ex.body);
    DomainRobotApiResponse response = DomainRobotApiResponse.fromJson(data);
    throw DomainRobotApiException(response.messages.elementAt(0).text,
        response.messages.elementAt(0).code,
        stid: response.stid, body: response, headers: ex.headers);
  }
}
