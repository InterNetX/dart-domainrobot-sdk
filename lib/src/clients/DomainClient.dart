import 'dart:convert';

import 'package:basic_utils/basic_utils.dart';
import 'package:domainrobot_api/src/clients/AbstractDomainRobotClient.dart';
import 'package:domainrobot_api/src/model/DomainRobotDomain.dart';
import 'package:domainrobot_api/src/model/Job.dart';
import 'package:domainrobot_api/src/model/query/Query.dart';

///
/// Implementation of the domain specific api functions
///
class DomainClient {
  ///
  /// Sends a domainCreate request
  ///
  /// Throws an [HttpClientException] if the status code is not 200.
  ///
  static Future<Job> domainCreate(
      String baseUrl, DomainRobotDomain payload, Map<String, String> headers,
      {Map<String, String> queryParameters}) async {
    String payloadAsString = json.encode(payload.toJson());
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.postForJson("$baseUrl/domain", payloadAsString,
          queryParameters: queryParameters, headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    Map<String, dynamic> data = body["data"][0];
    return Job.fromJson(data);
  }

  ///
  /// Sends a domainUpdate request
  ///
  /// Throws an [HttpClientException] if the status code is not 200.
  ///
  static Future<Job> domainUpdate(
      String baseUrl, DomainRobotDomain payload, Map<String, String> headers,
      {Map<String, String> queryParameters}) async {
    String payloadAsString = json.encode(payload.toJson());
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.putForJson(
          "$baseUrl/domain/${payload.name}", payloadAsString,
          queryParameters: queryParameters, headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    Map<String, dynamic> data = body["data"][0];
    return Job.fromJson(data);
  }

  ///
  /// Sends a domainInfo request
  ///
  /// Throws an [HttpClientException] if the status code is not 200.
  ///
  static Future<DomainRobotDomain> domainInfo(
      String baseUrl, String name, Map<String, String> headers,
      {Map<String, String> queryParameters}) async {
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.getForJson("$baseUrl/domain/$name",
          queryParameters: queryParameters, headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    Map<String, dynamic> data = body["data"][0];
    return DomainRobotDomain.fromJson(data);
  }

  ///
  /// Sends a domainList request
  ///
  /// Throws an [HttpClientException] if the status code is not 200.
  ///
  static Future<List<DomainRobotDomain>> domainList(
      String baseUrl, Query payload, Map<String, String> headers,
      {Map<String, String> queryParameters}) async {
    String payloadAsString = "";
    if (payload != null) {
      payloadAsString = json.encode(payload.toJson());
    }
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.postForJson(
          "$baseUrl/domain/_search", payloadAsString,
          queryParameters: queryParameters, headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    List data = body["data"];
    List<DomainRobotDomain> list = [];
    data.forEach((e) {
      DomainRobotDomain domain = new DomainRobotDomain.fromJson(e);
      list.add(domain);
    });
    return list;
  }
}
