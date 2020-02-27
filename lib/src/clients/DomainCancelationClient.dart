import 'dart:convert';

import 'package:basic_utils/basic_utils.dart';
import 'package:dart_domainrobot_sdk/src/clients/AbstractDomainRobotClient.dart';
import 'package:dart_domainrobot_sdk/src/model/generated/DomainCancelation.dart';
import 'package:dart_domainrobot_sdk/src/model/generated/Query.dart';

import '../../dart_domainrobot_sdk.dart';

///
/// Implementation of the domain cancelation specific api functions
///
class DomainCancelationClient extends AbstractDomainRobotClient {
  DomainCancelationClient(String userName, String password, String context,
      String baseUrl, String version)
      : super(userName, password, context, baseUrl, version);

  ///
  /// Sends a domaincancelation create request.
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<DomainCancelation> create(DomainCancelation payload,
      {Map<String, String> headers,
      Map<String, String> queryParameters}) async {
    headers = mergeHeaders(headers);
    var payloadAsString = json.encode(payload.toJson());
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.postForJson(
          '$baseUrl/domain/${payload.domain}/cancelation',
          body: payloadAsString,
          queryParameters: queryParameters,
          headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    Map<String, dynamic> data = body['data'][0];
    return DomainCancelation.fromJson(data);
  }

  ///
  /// Sends a contact update request
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<void> update(DomainCancelation payload,
      {Map<String, String> headers}) async {
    if (payload.domain == null) {
      throw ArgumentError.notNull('domain');
    }
    headers = mergeHeaders(headers);
    var payloadAsString = json.encode(payload.toJson());
    try {
      return await HttpUtils.putForJson(
          '$baseUrl/domain/${payload.domain}/cancelation',
          body: payloadAsString,
          headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
  }

  ///
  /// Sends a contact delete request
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<void> delete(String domain, {Map<String, String> headers}) async {
    headers = mergeHeaders(headers);
    try {
      return await HttpUtils.deleteForJson(
          '$baseUrl/domain/$domain/cancelation',
          headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
  }

  ///
  /// Sends a contact info request
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<DomainCancelation> info(String domain,
      {Map<String, String> headers}) async {
    headers = mergeHeaders(headers);
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.getForJson('$baseUrl/domain/$domain/cancelation',
          headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    Map<String, dynamic> data = body['data'][0];
    return DomainCancelation.fromJson(data);
  }

  ///
  /// Sends a domain cancelation list request
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  ///
  /// The following keys can be used for filtering, ordering and fetching additional data via query parameter:
  /// * disconnect
  /// * execdate
  /// * ctid
  /// * created
  /// * registryStatus
  /// * sld
  /// * type
  /// * tld
  /// * subtld
  /// * gainingRegistrar
  /// * updated
  ///
  ///
  /// **Parameter:**
  /// * [payload]: The query data to use for the request
  /// * [headers]: Custom headers for the request
  /// * [queryParameters]: Query parameter for the request
  ///
  Future<List<DomainCancelation>> list(
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
      body = await HttpUtils.postForJson('$baseUrl/domain/cancelation/_search',
          body: payloadAsString,
          queryParameters: queryParameters,
          headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    List data = body['data'];
    var list = <DomainCancelation>[];
    data.forEach((e) {
      var contact = DomainCancelation.fromJson(e);
      list.add(contact);
    });
    return list;
  }
}
