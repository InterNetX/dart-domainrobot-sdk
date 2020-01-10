import 'dart:convert';

import 'package:basic_utils/basic_utils.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:test/test.dart';
import 'package:dart_domainrobot_sdk/dart_domainrobot_sdk.dart';

void main() {
  var provider = DomainRobot('hello', 'world', '4', 'https://api.com');

  test('Test realtime wrong method', () async {
    final mapJson = {
      'stid': '20200101-test-1',
      'messages': [
        {
          'text': 'Fehlender oder falscher Wert.',
          'objects': [
            {'type': 'method', 'value': ''}
          ],
          'code': 'EF01000',
          'status': 'ERROR'
        }
      ],
      'status': {'code': 'E4001012', 'text': 'E4001012', 'type': 'ERROR'},
      'object': {'type': 'Certificate', 'value': 'domain.de'}
    };
    HttpUtils.client = MockClient((request) async {
      return Response(json.encode(mapJson), 400);
    });
    var cert = Certificate();
    try {
      await provider.certificate.realtime(cert);
      fail('Expected exception!');
    } catch (e) {
      DomainRobotApiException ex = e;
      expect(ex.errorCode, 'EF01000');
      expect(ex.message, 'Fehlender oder falscher Wert.');
      expect(ex.stid, '20200101-test-1');
      expect(ex.body.toJson(), mapJson);
    }
  });
}
