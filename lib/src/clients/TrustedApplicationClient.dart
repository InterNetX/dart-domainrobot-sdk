import 'dart:convert';

import 'package:basic_utils/basic_utils.dart';
import 'package:dart_domainrobot_sdk/src/clients/AbstractDomainRobotClient.dart';
import 'package:dart_domainrobot_sdk/src/model/generated/Query.dart';
import 'package:dart_domainrobot_sdk/src/model/generated/TrustedApplication.dart';

///
/// Implementation of the trusted application specific api functions
///
class TrustedApplicationClient extends AbstractDomainRobotClient {
  TrustedApplicationClient(String userName, String password, String context,
      String baseUrl, String version)
      : super(userName, password, context, baseUrl, version);

  ///
  /// Sends a trustedApplicationCreate request
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<TrustedApplication> trustedApplicationCreate(
      TrustedApplication payload,
      {Map<String, String> headers,
      Map<String, String> queryParameters}) async {
    headers = mergeHeaders(headers);
    var payloadAsString = json.encode(payload.toJson());
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.postForJson('$baseUrl/trustedapp', payloadAsString,
          queryParameters: queryParameters, headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    Map<String, dynamic> data = body['data'][0];
    return TrustedApplication.fromJson(data);
  }

  ///
  /// Sends a trustedApplicationUpdate request
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<TrustedApplication> trustedApplicationUpdate(
      TrustedApplication payload,
      {Map<String, String> headers}) async {
    headers = mergeHeaders(headers);
    var payloadAsString = json.encode(payload.toJson());
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.putForJson(
          '$baseUrl/trustedapp/${payload.uuid}', payloadAsString,
          headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    Map<String, dynamic> data = body['data'][0];
    return TrustedApplication.fromJson(data);
  }

  ///
  /// Sends a trustedApplicationDelete request
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<void> trustedApplicationDelete(String uuid,
      {Map<String, String> headers}) async {
    headers = mergeHeaders(headers);
    try {
      return await HttpUtils.deleteForJson('$baseUrl/trustedapp/$uuid',
          headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
  }

  ///
  /// Sends a trustedApplicationInfo request
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<TrustedApplication> trustedApplicationInfo(String uuid,
      {Map<String, String> headers}) async {
    headers = mergeHeaders(headers);
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.getForJson('$baseUrl/trustedapp/$uuid',
          headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    Map<String, dynamic> data = body['data'][0];
    return TrustedApplication.fromJson(data);
  }

  ///
  /// Sends a trustedApplicationList request
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<List<TrustedApplication>> trustedApplicationList(
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
          '$baseUrl/trustedapp/_search', payloadAsString,
          queryParameters: queryParameters, headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    List data = body['data'];
    var list = <TrustedApplication>[];
    data.forEach((e) {
      var trustedApplication = TrustedApplication.fromJson(e);
      list.add(trustedApplication);
    });
    return list;
  }
}
