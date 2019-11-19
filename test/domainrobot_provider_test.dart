import "package:test/test.dart";
import 'package:domainrobot_api/domainrobot_api.dart';

void main() {
  test('Test getBasicHeaders', () {
    DomainRobotProvider provider =
        DomainRobotProvider("hello", "world", "4", "https://api.com");
    Map<String, String> headers = provider.buildHeaders("ctid-1234");
    expect(headers.length, 3);
  });
}
