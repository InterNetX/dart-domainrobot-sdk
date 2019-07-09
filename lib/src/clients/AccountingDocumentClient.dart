part of domainrobot_api;

///
/// Implementation of the domainstudio specific api functions
///
class AccountingDocumentClient extends AbstractDomainRobotClient {
  ///
  /// Calculate the accounting document
  ///
  static Future<AccountingDocument> calculate(
      String baseUrl, AccountingDocument payload, Map<String, String> headers,
      {Map<String, String> queryParameters}) async {
    String payloadAsString = json.encode(payload.toJson());
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.postForJson(
          "$baseUrl/accounting/calculate", payloadAsString,
          queryParameters: queryParameters, headers: headers);
    } catch (e) {
      AbstractDomainRobotClient._handleException(e);
    }
    Map<String, dynamic> data = body["data"][0];
    return AccountingDocument.fromJson(data);
  }
}
