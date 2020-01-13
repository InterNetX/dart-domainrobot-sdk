import 'package:basic_utils/basic_utils.dart';
import 'package:dart_domainrobot_sdk/dart_domainrobot_sdk.dart';
import 'package:dart_domainrobot_sdk/src/clients/AbstractDomainRobotClient.dart';

///
/// Implementation of the zone specific api functions
///
class PollClient extends AbstractDomainRobotClient {
  PollClient(String userName, String password, String context, String baseUrl,
      String version)
      : super(userName, password, context, baseUrl, version);

  ///
  /// Sends a poll confirm request.
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<void> confirm(int id, {Map<String, String> headers}) async {
    headers = mergeHeaders(headers);
    try {
      return await HttpUtils.putForJson('$baseUrl/poll/$id', headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
  }

  ///
  /// Sends a poll info request
  ///
  /// Throws an [DomainRobotApiException] if the status code is not 200.
  ///
  Future<PollMessage> info({Map<String, String> headers}) async {
    headers = mergeHeaders(headers);
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.getForJson('$baseUrl/poll', headers: headers);
    } catch (e) {
      AbstractDomainRobotClient.handleException(e);
    }
    Map<String, dynamic> data = body['data'][0];
    return PollMessage.fromJson(data);
  }
}
