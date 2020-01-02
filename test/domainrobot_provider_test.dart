import 'package:test/test.dart';
import 'package:dart_domainrobot_sdk/dart_domainrobot_sdk.dart';

void main() {
  test('Test getBasicHeaders', () {
    var provider =
        DomainRobotProvider('hello', 'world', '4', 'https://api.com');
    var headers = provider.buildHeaders('ctid-1234');
    expect(headers.length, 4);
  });
}
