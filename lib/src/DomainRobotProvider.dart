import 'dart:convert';

import 'package:basic_utils/basic_utils.dart';
import 'package:dart_domainrobot_sdk/src/clients/AccountingDocumentClient.dart';
import 'package:dart_domainrobot_sdk/src/clients/ContactClient.dart';
import 'package:dart_domainrobot_sdk/src/clients/DomainClient.dart';
import 'package:dart_domainrobot_sdk/src/clients/DomainStudioClient.dart';
import 'package:dart_domainrobot_sdk/src/clients/TrustedApplicationClient.dart';
import 'package:dart_domainrobot_sdk/src/model/DomainRobotDomain.dart';
import 'package:dart_domainrobot_sdk/src/model/Job.dart';
import 'package:dart_domainrobot_sdk/src/model/accounting/AccountingDocument.dart';
import 'package:dart_domainrobot_sdk/src/model/domainstudio/DomainStudioDomain.dart';
import 'package:dart_domainrobot_sdk/src/model/domainstudio/DomainStudioSearch.dart';
import 'package:dart_domainrobot_sdk/src/model/exception/DomainRobotApiException.dart';
import 'package:dart_domainrobot_sdk/src/model/query/Query.dart';
import 'package:dart_domainrobot_sdk/src/model/application/TrustedApplication.dart';
import 'package:logging/logging.dart';

import 'DomainRobotHeaders.dart';
import 'model/contact/Contact.dart';

///
/// Provider for the DomainRobot API
///
class DomainRobotProvider {
  static const String TAG = "DomainRobotProvider";

  /// The DomainRobot API username
  String _userName;

  /// The DomainRobot API user password
  String _password;

  /// The DomainRobot API user context
  String _context;

  /// The DomainRobot API base url
  String _baseUrl;

  DomainRobotProvider(
    this._userName,
    this._password,
    this._context,
    this._baseUrl,
  );

  ///
  /// Create a new contact
  ///
  /// Throws an [DomainRobotApiException] if the status code was not 200 and it received a json response.
  ///
  Future<Contact> contactCreate(Contact contact,
      {String ctid = "", Map<String, String> headers}) async {
    Logger(TAG).info("Sending contactCreate");
    return await ContactClient.contactCreate(
        _baseUrl, contact, buildHeaders(ctid, headers: headers));
  }

  ///
  /// Update an existing contact
  ///
  /// Throws an [DomainRobotApiException] if the status code was not 200 and it received a json response.
  ///
  Future<Contact> contactUpdate(Contact contact,
      {String ctid = "", Map<String, String> headers}) async {
    Logger(TAG).info("Sending contactCreate");
    return await ContactClient.contactCreate(
        _baseUrl, contact, buildHeaders(ctid, headers: headers));
  }

  ///
  /// Delete an existing contact
  ///
  /// Throws an [DomainRobotApiException] if the status code was not 200 and it received a json response.
  ///
  Future<void> contactDelete(int id,
      {String ctid = "", Map<String, String> headers}) async {
    Logger(TAG).info("Sending contactDelete");
    await ContactClient.contactDelete(
        _baseUrl, id, buildHeaders(ctid, headers: headers));
  }

  ///
  /// Fetch a contact
  ///
  /// Throws an [DomainRobotApiException] if the status code was not 200 and it received a json response.
  ///
  Future<Contact> contactInfo(int id,
      {String ctid = "", Map<String, String> headers}) async {
    Logger(TAG).info("Sending contactCreate");
    return await ContactClient.contactInfo(
        _baseUrl, id, buildHeaders(ctid, headers: headers));
  }

  ///
  /// List all contacts
  ///
  /// Throws an [DomainRobotApiException] if the status code was not 200 and it received a json response.
  ///
  Future<List<Contact>> contactList(
      {Query query,
      String ctid = "",
      Map<String, String> headers,
      Map<String, String> queryParameters}) async {
    Logger(TAG).info("Sending contactCreate");
    return await ContactClient.contactList(
        _baseUrl, query, buildHeaders(ctid, headers: headers),
        queryParameters: queryParameters);
  }

  ///
  /// Register a new domain. This function is asynchronous and returns a running job.
  ///
  /// Throws an [DomainRobotApiException] if the status code was not 200 and it received a json response.
  ///
  Future<Job> domainCreate(DomainRobotDomain domain,
      {String ctid = "", Map<String, String> headers}) async {
    Logger(TAG).info("Sending domainCreate");
    return await DomainClient.domainCreate(
        _baseUrl, domain, buildHeaders(ctid, headers: headers));
  }

  ///
  /// Update an existing domain. This function is asynchronous and returns a running job.
  ///
  /// Throws an [DomainRobotApiException] if the status code was not 200 and it received a json response.
  ///
  Future<Job> domainUpdate(DomainRobotDomain domain,
      {String ctid = "", Map<String, String> headers}) async {
    Logger(TAG).info("Sending domainUpdate");
    return await DomainClient.domainUpdate(
        _baseUrl, domain, buildHeaders(ctid, headers: headers));
  }

  ///
  /// Fetch data for an existing domain.
  ///
  /// Throws an [DomainRobotApiException] if the status code was not 200 and it received a json response.
  ///
  Future<DomainRobotDomain> domainInfo(String name,
      {String ctid = "", Map<String, String> headers}) async {
    Logger(TAG).info("Sending domainInfo");
    return await DomainClient.domainInfo(
        _baseUrl, name, buildHeaders(ctid, headers: headers));
  }

  ///
  /// List all domains
  ///
  /// Throws an [DomainRobotApiException] if the status code was not 200 and it received a json response.
  ///
  Future<List<DomainRobotDomain>> domainList(
      {Query query,
      String ctid = "",
      Map<String, String> headers,
      Map<String, String> queryParameters}) async {
    Logger(TAG).info("Sending domainList");
    return await DomainClient.domainList(
        _baseUrl, query, buildHeaders(ctid, headers: headers),
        queryParameters: queryParameters);
  }

  ///
  /// Create a new trusted application
  ///
  /// Throws an [DomainRobotApiException] if the status code was not 200 and it received a json response.
  ///
  Future<TrustedApplication> trustedApplicationCreate(
      TrustedApplication trustedApp,
      {String ctid = "",
      Map<String, String> headers}) async {
    Logger(TAG).info("Sending trustedApplicationCreate");
    return await TrustedApplicationClient.trustedApplicationCreate(
        _baseUrl, trustedApp, buildHeaders(ctid, headers: headers));
  }

  ///
  /// Update an existing trusted application
  ///
  /// Throws an [DomainRobotApiException] if the status code was not 200 and it received a json response.
  ///
  Future<TrustedApplication> trustedApplicationUpdate(
      TrustedApplication trustedApp,
      {String ctid = "",
      Map<String, String> headers}) async {
    Logger(TAG).info("Sending trustedApplicationUpdate");
    return await TrustedApplicationClient.trustedApplicationUpdate(
        _baseUrl, trustedApp, buildHeaders(ctid, headers: headers));
  }

  ///
  /// Update an existing trusted application
  ///
  /// Throws an [DomainRobotApiException] if the status code was not 200 and it received a json response.
  ///
  Future<void> trustedApplicationDelete(String uuid,
      {String ctid = "", Map<String, String> headers}) async {
    Logger(TAG).info("Sending trustedApplicationDelete");
    return await TrustedApplicationClient.trustedApplicationDelete(
        _baseUrl, uuid, buildHeaders(ctid, headers: headers));
  }

  ///
  /// Fetch data for an existing trusted application.
  ///
  /// Throws an [DomainRobotApiException] if the status code was not 200 and it received a json response.
  ///
  Future<TrustedApplication> trustedApplicationInfo(String uuid,
      {String ctid = "", Map<String, String> headers}) async {
    Logger(TAG).info("Sending trustedApplicationInfo");
    return await TrustedApplicationClient.trustedApplicationInfo(
        _baseUrl, uuid, buildHeaders(ctid, headers: headers));
  }

  ///
  /// List all trusted applications
  ///
  /// Throws an [DomainRobotApiException] if the status code was not 200 and it received a json response.
  ///
  Future<List<TrustedApplication>> trustedApplicationList(
      {Query query,
      String ctid = "",
      Map<String, String> headers,
      Map<String, String> queryParameters}) async {
    Logger(TAG).info("Sending trustedApplicationList");
    return await TrustedApplicationClient.trustedApplicationList(
        _baseUrl, query, buildHeaders(ctid, headers: headers),
        queryParameters: queryParameters);
  }

  ///
  /// Sends a domain studio search request
  ///
  /// Throws an [DomainRobotApiException] if the status code was not 200 and it received a json response.
  ///
  Future<List<DomainStudioDomain>> domainStudioSearch(DomainStudioSearch search,
      {String ctid = "",
      Map<String, String> headers,
      Map<String, String> queryParameters}) async {
    Logger(TAG).info("Sending domainStudioSearch");
    return await DomainStudioClient.search(
        _baseUrl, search, buildHeaders(ctid, headers: headers),
        queryParameters: queryParameters);
  }

  ///
  /// Sends a domain studio search request
  ///
  /// Throws an [DomainRobotApiException] if the status code was not 200 and it received a json response.
  ///
  Future<AccountingDocument> accountingDocumentCalculate(
      AccountingDocument document,
      {String ctid = "",
      Map<String, String> headers,
      Map<String, String> queryParameters}) async {
    Logger(TAG).info("Sending accountingDocumentCalculate");
    return await AccountingDocumentClient.calculate(
        _baseUrl, document, buildHeaders(ctid, headers: headers),
        queryParameters: queryParameters);
  }

  ///
  ///
  /// Builds the basic headers that are needed by the domainrobot api.
  ///
  /// If the given [headers] are not null, they will be merged with the basic headers needed by the domainrobot api.
  ///
  /// For all possible headers look at the DomainRobotHeaders.dart file.
  ///
  Map<String, String> buildHeaders(String ctid, {Map<String, String> headers}) {
    if (headers == null) {
      headers = {};
    }
    String auth = base64.encode(utf8.encode("$_userName:$_password"));
    auth = "Basic $auth";
    headers.putIfAbsent("authorization", () => auth);
    if (_context != null) {
      headers.putIfAbsent(DOMAINROBOT_HEADER_CONTEXT, () => _context);
    }
    headers.putIfAbsent("Accept", () => "application/json");
    if (StringUtils.isNotNullOrEmpty(ctid)) {
      headers.putIfAbsent(DOMAINROBOT_HEADER_CTID, () => ctid);
    }
    return headers;
  }
}
