part of domainrobot_api;

///
/// Implementation of the domainstudio specific api functions
///
class DomainStudioClient extends AbstractDomainRobotClient {
  ///
  /// Sends a domainstudio search request
  ///
  /// Throws an [HttpClientException] if the status code is not 200.
  ///
  static Future<Job> search(
      String baseUrl, DomainRobotDomain payload, Map<String, String> headers,
      {Map<String, String> queryParameters}) async {
    String payloadAsString = json.encode(payload.toJson());
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.postForJson("$baseUrl", payloadAsString,
          queryParameters: queryParameters, headers: headers);
    } catch (e) {
      AbstractDomainRobotClient._handleException(e);
    }
    Map<String, dynamic> data = body["data"][0];
    return Job.fromJson(data);
  }
}
