import 'package:dart_domainrobot_sdk/src/clients/AbstractDomainRobotClient.dart';

///
/// Implementation of the accounting specific api functions
///
class AccountingDocumentClient extends AbstractDomainRobotClient {
  AccountingDocumentClient(String userName, String password, String context,
      String baseUrl, String version)
      : super(userName, password, context, baseUrl, version);

  ///
  /// Calculate the accounting document
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  /*
  static Future<AccountingDocument> calculate(
      String baseUrl, AccountingDocument payload, Map<String, String> headers,
      {Map<String, String> queryParameters}) async {
    var payloadAsString = json.encode(payload.toJson());
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.postForJson(
          '$baseUrl/accounting/calculate', payloadAsString,
          queryParameters: queryParameters, headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    Map<String, dynamic> data = body['data'][0];
    return AccountingDocument.fromJson(data);
  }
  */
}
