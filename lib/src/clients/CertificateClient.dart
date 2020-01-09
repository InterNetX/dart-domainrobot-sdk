import 'dart:convert';

import 'package:basic_utils/basic_utils.dart';
import 'package:dart_domainrobot_sdk/src/clients/AbstractDomainRobotClient.dart';
import 'package:dart_domainrobot_sdk/src/model/generated/Certificate.dart';
import 'package:dart_domainrobot_sdk/src/model/generated/CertificateData.dart';

class CertificateClient extends AbstractDomainRobotClient {
  CertificateClient(
      String userName, String password, String context, String baseUrl)
      : super(userName, password, context, baseUrl);

  ///
  /// Sends a prepare order request
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<CertificateData> prepareOrder(CertificateData payload,
      {Map<String, String> headers,
      Map<String, String> queryParameters}) async {
    headers = mergeHeaders(headers);
    var payloadAsString = json.encode(payload.toJson());
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.postForJson(
          '$baseUrl/certificate/_prepareOrder', payloadAsString,
          queryParameters: queryParameters, headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    Map<String, dynamic> data = body['data'][0];
    return CertificateData.fromJson(data);
  }

  ///
  /// Sends a certificate realtime request
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<Certificate> realtime(Certificate payload,
      {Map<String, String> headers,
      Map<String, String> queryParameters}) async {
    headers = mergeHeaders(headers);
    var payloadAsString = json.encode(payload.toJson());
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.postForJson(
          '$baseUrl/certificate/_realtime', payloadAsString,
          queryParameters: queryParameters, headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    Map<String, dynamic> data = body['data'][0];
    return Certificate.fromJson(data);
  }
}
