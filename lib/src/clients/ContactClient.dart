import 'dart:convert';

import 'package:basic_utils/basic_utils.dart';
import 'package:dart_domainrobot_sdk/src/clients/AbstractDomainRobotClient.dart';
import 'package:dart_domainrobot_sdk/src/model/generated/Contact.dart';
import 'package:dart_domainrobot_sdk/src/model/generated/Query.dart';

///
/// Implementation of the contact specific api functions
///
class ContactClient extends AbstractDomainRobotClient {
  ContactClient(
      String userName, String password, String context, String baseUrl)
      : super(userName, password, context, baseUrl);

  ///
  /// Sends a contactCreate request
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<Contact> contactCreate(Contact payload,
      {Map<String, String> headers,
      Map<String, String> queryParameters}) async {
    headers = mergeHeaders(headers);
    var payloadAsString = json.encode(payload.toJson());
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.postForJson('$baseUrl/contact', payloadAsString,
          queryParameters: queryParameters, headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    Map<String, dynamic> data = body['data'][0];
    return Contact.fromJson(data);
  }

  ///
  /// Sends a contactUpdate request
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<void> contactUpdate(Contact payload,
      {Map<String, String> headers}) async {
    headers = mergeHeaders(headers);
    var payloadAsString = json.encode(payload.toJson());
    try {
      return await HttpUtils.putForJson(
          '$baseUrl/contact/${payload.id}', payloadAsString,
          headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
  }

  ///
  /// Sends a contactDelete request
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<void> contactDelete(int id, {Map<String, String> headers}) async {
    headers = mergeHeaders(headers);
    try {
      return await HttpUtils.deleteForJson('$baseUrl/contact/$id',
          headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
  }

  ///
  /// Sends a contactInfo request
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<Contact> contactInfo(int id, {Map<String, String> headers}) async {
    headers = mergeHeaders(headers);
    Map<String, dynamic> body;
    try {
      body =
          await HttpUtils.getForJson('$baseUrl/contact/$id', headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    Map<String, dynamic> data = body['data'][0];
    return Contact.fromJson(data);
  }

  ///
  /// Sends a contactList request
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<List<Contact>> contactList(
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
      body = await HttpUtils.postForJson(
          '$baseUrl/contact/_search', payloadAsString,
          queryParameters: queryParameters, headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    List data = body['data'];
    var list = <Contact>[];
    data.forEach((e) {
      var contact = Contact.fromJson(e);
      list.add(contact);
    });
    return list;
  }
}
