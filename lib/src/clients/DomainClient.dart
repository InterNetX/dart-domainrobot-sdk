import 'dart:convert';

import 'package:basic_utils/basic_utils.dart';
import 'package:dart_domainrobot_sdk/src/clients/AbstractDomainRobotClient.dart';
import 'package:dart_domainrobot_sdk/src/model/generated/Domain.dart'
    as domainrobot;
import 'package:dart_domainrobot_sdk/src/model/generated/DomainRestore.dart';
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
  /// Sends a domain create request
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<Job> create(domainrobot.Domain payload,
      {Map<String, String> headers,
      Map<String, String> queryParameters}) async {
    headers = mergeHeaders(headers);
    var payloadAsString = json.encode(payload.toJson());
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.postForJson('$baseUrl/domain',
          body: payloadAsString,
          queryParameters: queryParameters,
          headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    Map<String, dynamic> data = body['data'][0];
    return Job.fromJson(data);
  }

  ///
  /// Sends a domain update request
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<Job> update(domainrobot.Domain payload,
      {Map<String, String> headers,
      Map<String, String> queryParameters}) async {
    headers = mergeHeaders(headers);
    var payloadAsString = json.encode(payload.toJson());
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.putForJson('$baseUrl/domain/${payload.name}',
          body: payloadAsString,
          queryParameters: queryParameters,
          headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    Map<String, dynamic> data = body['data'][0];
    return Job.fromJson(data);
  }

  ///
  /// Sends a domain info request
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<domainrobot.Domain> info(String name,
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
  /// Sends a domain list request
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<List<domainrobot.Domain>> list(Query payload,
      {Map<String, String> headers,
      Map<String, String> queryParameters}) async {
    headers = mergeHeaders(headers);
    var payloadAsString = '';
    if (payload != null) {
      payloadAsString = json.encode(payload.toJson());
    }
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.postForJson('$baseUrl/domain/_search',
          body: payloadAsString,
          queryParameters: queryParameters,
          headers: headers);
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

  ///
  /// Sends a authinfo1 create request.
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<domainrobot.Domain> createAuthinfo1(String domain,
      {Map<String, String> headers,
      Map<String, String> queryParameters}) async {
    headers = mergeHeaders(headers);
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.postForJson('$baseUrl/domain/$domain/_authinfo1',
          queryParameters: queryParameters, headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    Map<String, dynamic> data = body['data'][0];
    return domainrobot.Domain.fromJson(data);
  }

  ///
  /// Sends a authinfo1 delete request.
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<void> deleteAuthinfo1(String name,
      {Map<String, String> headers,
      Map<String, String> queryParameters}) async {
    headers = mergeHeaders(headers);
    try {
      await HttpUtils.deleteForJson('$baseUrl/domain/$name/_authinfo1',
          queryParameters: queryParameters, headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
  }

  ///
  /// Sends a authinfo2 create request.
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<void> createAuthinfo2(String domain,
      {Map<String, String> headers,
      Map<String, String> queryParameters}) async {
    headers = mergeHeaders(headers);
    try {
      await HttpUtils.postForJson('$baseUrl/domain/$domain/_authinfo2',
          queryParameters: queryParameters, headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
  }

  ///
  /// Sends a domain renew request
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<Job> renew(domainrobot.Domain payload,
      {Map<String, String> headers,
      Map<String, String> queryParameters}) async {
    headers = mergeHeaders(headers);
    var payloadAsString = json.encode(payload.toJson());
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.putForJson(
          '$baseUrl/domain/${payload.name}/_renew',
          body: payloadAsString,
          queryParameters: queryParameters,
          headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    Map<String, dynamic> data = body['data'][0];
    return Job.fromJson(data);
  }

  ///
  /// Sends a domain transfer request
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<Job> transfer(domainrobot.Domain payload,
      {Map<String, String> headers,
      Map<String, String> queryParameters}) async {
    headers = mergeHeaders(headers);
    var payloadAsString = json.encode(payload.toJson());
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.postForJson('$baseUrl/domain/_transfer',
          body: payloadAsString,
          queryParameters: queryParameters,
          headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    Map<String, dynamic> data = body['data'][0];
    return Job.fromJson(data);
  }

  ///
  /// Sends a domain status update request
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<void> updateStatus(domainrobot.Domain payload,
      {Map<String, String> headers,
      Map<String, String> queryParameters}) async {
    headers = mergeHeaders(headers);
    var payloadAsString = json.encode(payload.toJson());
    try {
      await HttpUtils.putForJson(
          '$baseUrl/domain/${payload.name}/_statusUpdate',
          body: payloadAsString,
          queryParameters: queryParameters,
          headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
  }

  ///
  /// Sends a domain restore list request
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<List<DomainRestore>> restoreList(Query payload,
      {Map<String, String> headers,
      Map<String, String> queryParameters}) async {
    headers = mergeHeaders(headers);
    var payloadAsString = '';
    if (payload != null) {
      payloadAsString = json.encode(payload.toJson());
    }
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.postForJson('$baseUrl/domain/restore/_search',
          body: payloadAsString,
          queryParameters: queryParameters,
          headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    List data = body['data'];
    var list = <DomainRestore>[];
    data.forEach((e) {
      var domain = DomainRestore.fromJson(e);
      list.add(domain);
    });
    return list;
  }

  ///
  /// Sends a domain restore request
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<Job> restore(DomainRestore payload,
      {Map<String, String> headers,
      Map<String, String> queryParameters}) async {
    if (payload.name == null) {
      throw ArgumentError.notNull('payload.name');
    }
    headers = mergeHeaders(headers);
    var payloadAsString = json.encode(payload.toJson());
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.putForJson(
          '$baseUrl/domain/${payload.name}/_restore',
          body: payloadAsString,
          queryParameters: queryParameters,
          headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    Map<String, dynamic> data = body['data'][0];
    return Job.fromJson(data);
  }
}
