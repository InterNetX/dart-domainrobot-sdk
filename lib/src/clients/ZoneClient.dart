import 'dart:convert';

import 'package:basic_utils/basic_utils.dart';
import 'package:dart_domainrobot_sdk/dart_domainrobot_sdk.dart';
import 'package:dart_domainrobot_sdk/src/clients/AbstractDomainRobotClient.dart';
import 'package:dart_domainrobot_sdk/src/model/generated/Query.dart';
import 'package:dart_domainrobot_sdk/src/model/generated/Zone.dart';

///
/// Implementation of the zone specific api functions
///
class ZoneClient extends AbstractDomainRobotClient {
  ZoneClient(String userName, String password, String context, String baseUrl,
      String version)
      : super(userName, password, context, baseUrl, version);

  ///
  /// Sends a zone create request.
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<Zone> create(Zone payload,
      {Map<String, String> headers,
      Map<String, String> queryParameters}) async {
    headers = mergeHeaders(headers);
    var payloadAsString = json.encode(payload.toJson());
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.postForJson('$baseUrl/zone', payloadAsString,
          queryParameters: queryParameters, headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    Map<String, dynamic> data = body['data'][0];
    return Zone.fromJson(data);
  }

  ///
  /// Sends a zone update request.
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<void> update(Zone payload, {Map<String, String> headers}) async {
    if (payload.origin == null) {
      throw ArgumentError.notNull('origin');
    }
    if (payload.virtualNameServer == null) {
      throw ArgumentError.notNull('virtualNameServer');
    }
    headers = mergeHeaders(headers);
    var payloadAsString = json.encode(payload.toJson());
    try {
      return await HttpUtils.putForJson(
          '$baseUrl/zone/${payload.origin}/${payload.virtualNameServer}',
          body: payloadAsString,
          headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
  }

  ///
  /// Sends a zone delete request.
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<void> delete(String origin, String virtualNameServer,
      {Map<String, String> headers}) async {
    headers = mergeHeaders(headers);
    try {
      return await HttpUtils.deleteForJson(
          '$baseUrl/zone/${origin}/${virtualNameServer}',
          headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
  }

  ///
  /// Sends a zone info request
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<Zone> info(String origin, String virtualNameServer,
      {Map<String, String> headers}) async {
    headers = mergeHeaders(headers);
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.getForJson(
          '$baseUrl/zone/${origin}/${virtualNameServer}',
          headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    Map<String, dynamic> data = body['data'][0];
    return Zone.fromJson(data);
  }

  ///
  /// Sends a zone list request.
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<List<Zone>> list(
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
          '$baseUrl/zone/_search', payloadAsString,
          queryParameters: queryParameters, headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    List data = body['data'];
    var list = <Zone>[];
    data.forEach((e) {
      var contact = Zone.fromJson(e);
      list.add(contact);
    });
    return list;
  }

  ///
  /// Sends a zone import request.
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<Zone> import(Zone payload,
      {Map<String, String> headers,
      Map<String, String> queryParameters}) async {
    if (payload.origin == null) {
      throw ArgumentError.notNull('origin');
    }
    if (payload.virtualNameServer == null) {
      throw ArgumentError.notNull('virtualNameServer');
    }
    headers = mergeHeaders(headers);
    var payloadAsString = json.encode(payload.toJson());
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.postForJson(
          '$baseUrl/zone/${payload.origin}/${payload.virtualNameServer}/_import',
          payloadAsString,
          queryParameters: queryParameters,
          headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    Map<String, dynamic> data = body['data'][0];
    return Zone.fromJson(data);
  }

  ///
  /// Sends a zone stream request.
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<void> stream(String origin, ZoneStream payload,
      {Map<String, String> headers,
      Map<String, String> queryParameters}) async {
    headers = mergeHeaders(headers);
    var payloadAsString = json.encode(payload.toJson());
    try {
      await HttpUtils.postForJson(
          '$baseUrl/zone/$origin/_stream', payloadAsString,
          queryParameters: queryParameters, headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
  }
}
