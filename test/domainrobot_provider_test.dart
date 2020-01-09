import 'package:dart_domainrobot_sdk/src/clients/DomainStudioClient.dart';
import 'package:test/test.dart';

void main() {
  test('Test getBasicHeaders', () {
    var provider = DomainStudioClient('hello', 'world', '4', 'https://api.com');
    var headers = provider.mergeHeaders({'X-Domainrobot-Ctid': 'ctid-1234'});
    expect(headers.length, 4);
  });
}
