import 'dart:convert';

import 'package:basic_utils/basic_utils.dart';
import 'package:dart_domainrobot_sdk/dart_domainrobot_sdk.dart';
import 'package:dart_domainrobot_sdk/src/clients/AbstractDomainRobotClient.dart';
import 'package:dart_domainrobot_sdk/src/model/generated/Query.dart';
import 'package:dart_domainrobot_sdk/src/model/generated/TransferAnswer.dart';
import 'package:dart_domainrobot_sdk/src/model/generated/TransferOut.dart';

///
/// Implementation of the zone specific api functions
///
class TransferOutClient extends AbstractDomainRobotClient {
  TransferOutClient(String userName, String password, String context,
      String baseUrl, String version)
      : super(userName, password, context, baseUrl, version);

  ///
  /// Sends a transfer out list request
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<List<TransferOut>> list(
      {Query payload,
      Map<String, String> headers,
      Map<String, String> queryParameters}) async {
    headers = mergeHeaders(headers);
    var payloadAsString = '';
    if (payload != null) {
      payloadAsString = json.encode(payload.toJson());
    }
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.postForJson('$baseUrl/transferout/_search',
          body: payloadAsString,
          queryParameters: queryParameters,
          headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    List data = body['data'];
    var list = <TransferOut>[];
    data.forEach((e) {
      var item = TransferOut.fromJson(e);
      list.add(item);
    });
    return list;
  }

  ///
  /// Sends a transfer out answer request
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<void> answer(String domain, TransferAnswer answer,
      {Map<String, String> headers,
      Map<String, String> queryParameters}) async {
    headers = mergeHeaders(headers);

    var transformedAnswer = '';
    if (answer == TransferAnswer.TRANSFER_OUT_ACK) {
      transformedAnswer = 'ack';
    } else {
      transformedAnswer = 'nack';
    }
    try {
      await HttpUtils.putForJson(
          '$baseUrl/transferout/$domain/$transformedAnswer',
          queryParameters: queryParameters,
          headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
  }
}
