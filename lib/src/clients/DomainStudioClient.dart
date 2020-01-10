import 'dart:convert';

import 'package:basic_utils/basic_utils.dart';
import 'package:dart_domainrobot_sdk/src/clients/AbstractDomainRobotClient.dart';
import 'package:dart_domainrobot_sdk/src/model/generated/DomainEnvelope.dart';
import 'package:dart_domainrobot_sdk/src/model/generated/DomainEnvelopeSearchRequest.dart';

///
/// Implementation of the domainstudio specific api functions
///
class DomainStudioClient extends AbstractDomainRobotClient {
  DomainStudioClient(String userName, String password, String context,
      String baseUrl, String version)
      : super(userName, password, context, baseUrl, version);

  ///
  /// Sends a domainstudio search request
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<List<DomainEnvelope>> search(DomainEnvelopeSearchRequest payload,
      {Map<String, String> headers,
      Map<String, String> queryParameters}) async {
    headers = mergeHeaders(headers);
    var payloadAsString = json.encode(payload.toJson());
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.postForJson(
          '$baseUrl/domainstudio', payloadAsString,
          queryParameters: queryParameters, headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    var list = <DomainEnvelope>[];
    if (body.containsKey('data')) {
      List data = body['data'];
      data.forEach((e) {
        var domain = DomainEnvelope.fromJson(e);
        list.add(domain);
      });
    }
    return list;
  }
}
