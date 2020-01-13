import 'dart:convert';

import 'package:basic_utils/basic_utils.dart';
import 'package:dart_domainrobot_sdk/src/clients/AbstractDomainRobotClient.dart';
import 'package:dart_domainrobot_sdk/src/model/generated/Certificate.dart';
import 'package:dart_domainrobot_sdk/src/model/generated/CertificateData.dart';
import 'package:dart_domainrobot_sdk/src/model/generated/Job.dart';

class CertificateClient extends AbstractDomainRobotClient {
  CertificateClient(String userName, String password, String context,
      String baseUrl, String version)
      : super(userName, password, context, baseUrl, version);

  ///
  /// Sends a prepare order request
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  /// **Parameter:**
  /// * [payload]:
  /// * [headers]: Custom headers for the request
  /// * [queryParameters]: Query parameter for the request
  ///
  Future<CertificateData> prepareOrder(CertificateData payload,
      {Map<String, String> headers,
      Map<String, String> queryParameters}) async {
    headers = mergeHeaders(headers);
    var payloadAsString = json.encode(payload.toJson());
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.postForJson('$baseUrl/certificate/_prepareOrder',
          body: payloadAsString,
          queryParameters: queryParameters,
          headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    Map<String, dynamic> data = body['data'][0];
    return CertificateData.fromJson(data);
  }

  ///
  /// Sends a certificate realtime request.
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  /// **Parameter:**
  /// * [payload]: The certificate to order
  /// * [headers]: Custom headers for the request
  /// * [queryParameters]: Query parameter for the request
  ///
  Future<Certificate> realtime(Certificate payload,
      {Map<String, String> headers,
      Map<String, String> queryParameters}) async {
    headers = mergeHeaders(headers);
    var payloadAsString = json.encode(payload.toJson());
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.postForJson('$baseUrl/certificate/_realtime',
          body: payloadAsString,
          queryParameters: queryParameters,
          headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    Map<String, dynamic> data = body['data'][0];
    return Certificate.fromJson(data);
  }

  ///
  /// Sends a certificate create request
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  /// **Parameter:**
  /// * [payload]: The certificate to order
  /// * [headers]: Custom headers for the request
  /// * [queryParameters]: Query parameter for the request
  ///
  Future<Job> create(Certificate payload,
      {Map<String, String> headers,
      Map<String, String> queryParameters}) async {
    headers = mergeHeaders(headers);
    var payloadAsString = json.encode(payload.toJson());
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.postForJson('$baseUrl/certificate',
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
  /// Sends a certificate reissue request.
  ///
  /// If the given certificate is null, the api will use the stored data to make the reissue.
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  /// **Parameter:**
  /// * [id]: The id of the certificate to reissue
  /// * [payload]: The certificate data to use for the reissue
  /// * [headers]: Custom headers for the request
  /// * [queryParameters]: Query parameter for the request
  ///
  Future<Job> reissue(int id,
      {Certificate payload,
      Map<String, String> headers,
      Map<String, String> queryParameters}) async {
    headers = mergeHeaders(headers);
    var payloadAsString;
    if (payload != null) {
      payloadAsString = json.encode(payload.toJson());
    }
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.putForJson('$baseUrl/certificate/$id/_reissue',
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
  /// Sends a certificate reissue request
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  /// **Parameter:**
  /// * [id]: The id of the certificate to delete
  /// * [headers]: Custom headers for the request
  ///
  Future<Job> delete(int id, {Map<String, String> headers}) async {
    headers = mergeHeaders(headers);
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.deleteForJson('$baseUrl/certificate/$id',
          headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    Map<String, dynamic> data = body['data'][0];
    return Job.fromJson(data);
  }

  ///
  /// Sends a certificate info request
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  /// **Parameter:**
  /// * [id]: The id of the certificate to fetch
  /// * [headers]: Custom headers for the request
  ///
  Future<Certificate> info(int id, {Map<String, String> headers}) async {
    headers = mergeHeaders(headers);
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.getForJson('$baseUrl/certificate/$id',
          headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    Map<String, dynamic> data = body['data'][0];
    return Certificate.fromJson(data);
  }

  ///
  /// Sends a certificate renew request.
  ///
  /// **Note:** If the given certificate is null, the api will use the stored data to make the renew.
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  /// **Parameter:**
  /// * [id]: The id of the certificate to renew
  /// * [payload]: The certificate data to use for the renew
  /// * [headers]: Custom headers for the request
  /// * [queryParameters]: Query parameter for the request
  ///
  Future<Job> renew(int id,
      {Certificate payload,
      Map<String, String> headers,
      Map<String, String> queryParameters}) async {
    headers = mergeHeaders(headers);
    var payloadAsString;
    if (payload != null) {
      payloadAsString = json.encode(payload.toJson());
    }
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.putForJson('$baseUrl/certificate/$id/_renew',
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
  /// Sends a certificate comment update request.
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  /// **Parameter:**
  /// * [id]: The id of the certificate to update the comment
  /// * [comment]: The comment
  /// * [headers]: Custom headers for the request
  /// * [queryParameters]: Query parameter for the request
  ///
  Future<void> commentUpdate(int id, String comment,
      {Map<String, String> headers,
      Map<String, String> queryParameters}) async {
    headers = mergeHeaders(headers);
    var payloadAsString = json.encode(Certificate(comment: comment).toJson());
    try {
      await HttpUtils.putForJson('$baseUrl/certificate/$id/_comment',
          body: payloadAsString,
          queryParameters: queryParameters,
          headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
  }
}
