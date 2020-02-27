import 'dart:convert';

import 'package:basic_utils/basic_utils.dart';
import 'package:dart_domainrobot_sdk/src/clients/AbstractDomainRobotClient.dart';
import 'package:dart_domainrobot_sdk/src/model/generated/Query.dart';
import 'package:dart_domainrobot_sdk/src/model/generated/SslContact.dart';

///
/// Implementation of the contact specific api functions
///
class SslContactClient extends AbstractDomainRobotClient {
  SslContactClient(String userName, String password, String context,
      String baseUrl, String version)
      : super(userName, password, context, baseUrl, version);

  ///
  /// Sends a sslcontact create request.
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  /// **Parameter:**
  /// * [payload]: The sslcontact to create
  /// * [headers]: Custom headers for the request
  /// * [queryParameters]: Query parameter for the request
  ///
  Future<SslContact> create(SslContact payload,
      {Map<String, String> headers,
      Map<String, String> queryParameters}) async {
    headers = mergeHeaders(headers);
    var payloadAsString = json.encode(payload.toJson());
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.postForJson('$baseUrl/sslcontact',
          body: payloadAsString,
          queryParameters: queryParameters,
          headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    Map<String, dynamic> data = body['data'][0];
    return SslContact.fromJson(data);
  }

  ///
  /// Sends a sslcontact update request.
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  /// **Parameter:**
  /// * [payload]: The sslcontact to update
  /// * [headers]: Custom headers for the request
  /// * [queryParameters]: Query parameter for the request
  ///
  Future<void> update(SslContact payload, {Map<String, String> headers}) async {
    headers = mergeHeaders(headers);
    var payloadAsString = json.encode(payload.toJson());
    try {
      return await HttpUtils.putForJson('$baseUrl/sslcontact/${payload.id}',
          body: payloadAsString, headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
  }

  ///
  /// Sends a sslcontact delete request.
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  /// **Parameter:**
  /// * [id]: The id of the contact
  /// * [headers]: Custom headers for the request
  ///
  Future<void> delete(int id, {Map<String, String> headers}) async {
    headers = mergeHeaders(headers);
    try {
      return await HttpUtils.deleteForJson('$baseUrl/sslcontact/$id',
          headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
  }

  ///
  /// Sends a sslcontact info request.
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  /// **Parameter:**
  /// * [id]: The id of the contact
  /// * [headers]: Custom headers for the request
  ///
  Future<SslContact> info(int id, {Map<String, String> headers}) async {
    headers = mergeHeaders(headers);
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.getForJson('$baseUrl/sslcontact/$id',
          headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    Map<String, dynamic> data = body['data'][0];
    return SslContact.fromJson(data);
  }

  ///
  /// Sends a sslcontact list request.
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  ///
  /// The following keys can be used for filtering, ordering and fetching additional data via query parameter:
  /// * country
  /// * fname
  /// * address
  /// * city
  /// * created
  /// * title
  /// * lname
  /// * phone
  /// * organization
  /// * state
  /// * id
  /// * fax
  /// * pcode
  /// * updated
  /// * email
  ///
  ///
  /// **Parameter:**
  /// * [payload]: The query data to use for the request
  /// * [headers]: Custom headers for the request
  /// * [queryParameters]: Query parameter for the request
  ///
  Future<List<SslContact>> list(
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
      body = await HttpUtils.postForJson('$baseUrl/sslcontact/_search',
          body: payloadAsString,
          queryParameters: queryParameters,
          headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    List data = body['data'];
    var list = <SslContact>[];
    data.forEach((e) {
      var contact = SslContact.fromJson(e);
      list.add(contact);
    });
    return list;
  }
}
