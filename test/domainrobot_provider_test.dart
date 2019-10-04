import "package:test/test.dart";
import 'package:domainrobot_api/domainrobot_api.dart';

void main() {
  test('Test getBasicHeaders', () {
    DomainRobotProvider provider =
        DomainRobotProvider("hello", "world", "https://api.com");
    Map<String, String> headers = provider.getBasicHeaders("ctid-1234");
    expect(headers.length, 3);
  });
}
