import 'dart:convert';

import 'package:basic_utils/basic_utils.dart';
import 'package:dart_domainrobot_sdk/src/clients/AbstractDomainRobotClient.dart';
import 'package:dart_domainrobot_sdk/src/model/generated/Domain.dart'
    as domainrobot;
import 'package:dart_domainrobot_sdk/src/model/generated/Job.dart';
import 'package:dart_domainrobot_sdk/src/model/generated/Query.dart';

///
/// Implementation of the domain specific api functions
///
class DomainClient extends AbstractDomainRobotClient {
  DomainClient(String userName, String password, String context, String baseUrl,
      String version)
      : super(userName, password, context, baseUrl, version);

  ///
  /// Sends a domainCreate request
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<Job> domainCreate(domainrobot.Domain payload,
      {Map<String, String> headers,
      Map<String, String> queryParameters}) async {
    headers = mergeHeaders(headers);
    var payloadAsString = json.encode(payload.toJson());
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.postForJson('$baseUrl/domain', payloadAsString,
          queryParameters: queryParameters, headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    Map<String, dynamic> data = body['data'][0];
    return Job.fromJson(data);
  }

  ///
  /// Sends a domainUpdate request
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<Job> domainUpdate(domainrobot.Domain payload,
      {Map<String, String> headers,
      Map<String, String> queryParameters}) async {
    headers = mergeHeaders(headers);
    var payloadAsString = json.encode(payload.toJson());
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.putForJson(
          '$baseUrl/domain/${payload.name}', payloadAsString,
          queryParameters: queryParameters, headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    Map<String, dynamic> data = body['data'][0];
    return Job.fromJson(data);
  }

  ///
  /// Sends a domainInfo request
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<domainrobot.Domain> domainInfo(String name,
      {Map<String, String> headers,
      Map<String, String> queryParameters}) async {
    headers = mergeHeaders(headers);
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.getForJson('$baseUrl/domain/$name',
          queryParameters: queryParameters, headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    Map<String, dynamic> data = body['data'][0];
    return domainrobot.Domain.fromJson(data);
  }

  ///
  /// Sends a domainList request
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<List<domainrobot.Domain>> domainList(Query payload,
      {Map<String, String> headers,
      Map<String, String> queryParameters}) async {
    headers = mergeHeaders(headers);
    var payloadAsString = '';
    if (payload != null) {
      payloadAsString = json.encode(payload.toJson());
    }
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.postForJson(
          '$baseUrl/domain/_search', payloadAsString,
          queryParameters: queryParameters, headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    List data = body['data'];
    var list = <domainrobot.Domain>[];
    data.forEach((e) {
      var domain = domainrobot.Domain.fromJson(e);
      list.add(domain);
    });
    return list;
  }
}
