part of domainrobot_api;

///
///
///
class AbstractDomainRobotClient {
  ///
  ///
  ///
  static void _handleException(Exception e) {
    HttpResponseException ex = e;
    Map<String, dynamic> data = json.decode(ex.body);
    DomainRobotApiResponse response = DomainRobotApiResponse.fromJson(data);
    throw DomainRobotApiException(response.messages.elementAt(0).text,
        response.messages.elementAt(0).code,
        stid: response.stid, body: response, headers: ex.headers);
  }
}
