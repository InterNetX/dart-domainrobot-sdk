import 'dart:convert';

import 'package:basic_utils/basic_utils.dart';
import 'package:dart_domainrobot_sdk/src/clients/AbstractDomainRobotClient.dart';
import 'package:dart_domainrobot_sdk/src/model/domainstudio/DomainStudioDomain.dart';
import 'package:dart_domainrobot_sdk/src/model/domainstudio/DomainStudioSearch.dart';

///
/// Implementation of the domainstudio specific api functions
///
class DomainStudioClient extends AbstractDomainRobotClient {
  ///
  /// Sends a domainstudio search request
  ///
  /// Throws an [HttpClientException] if the status code is not 200.
  ///
  static Future<List<DomainStudioDomain>> search(
      String baseUrl, DomainStudioSearch payload, Map<String, String> headers,
      {Map<String, String> queryParameters}) async {
    String payloadAsString = json.encode(payload.toJson());
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.postForJson(
          "$baseUrl/domainstudio", payloadAsString,
          queryParameters: queryParameters, headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    List data = body["data"];
    List<DomainStudioDomain> list = [];
    data.forEach((e) {
      DomainStudioDomain domain = new DomainStudioDomain.fromJson(e);
      list.add(domain);
    });
    return list;
  }
}
