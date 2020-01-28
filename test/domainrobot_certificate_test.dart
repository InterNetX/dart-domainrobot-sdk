import 'dart:convert';

import 'package:basic_utils/basic_utils.dart';
import 'package:dart_domainrobot_sdk/src/model/generated/Certificate.dart';
import 'package:dart_domainrobot_sdk/src/model/generated/TimeUnitConstants.dart';
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

  test('Test realtime', () async {
    final mapJson = {
      'stid': '20200110-test-1',
      'status': {'code': 'S4001012', 'text': 'S4001012', 'type': 'SUCCESS'},
      'object': {'type': 'Certificate', 'value': 'domain.de'},
      'data': [
        {
          'created': '2020-01-10T00:00:00.000+0100',
          'owner': {'context': 9, 'user': 'testuser'},
          'updater': {'context': 9, 'user': 'testuser'},
          'orderId': '18345169',
          'name': 'domain.de',
          'lifetime': {'unit': 'MONTH', 'period': 12},
          'software': 'APACHESSL',
          'csr':
              '-----BEGIN CERTIFICATE REQUEST-----\n...\n-----END CERTIFICATE REQUEST-----',
          'server':
              '-----BEGIN CERTIFICATE-----\n...\n-----END CERTIFICATE-----\r\n',
          'serialNumber': '536951DE1675EB0F8B00D2ED43CC0AE',
          'product': 'BASIC_SSL',
          'certificateType': 'FQDN',
          'expire': '2020-02-09T13:00:00.000+0100',
          'certificationAuthority': [
            {
              'caType': 'INTERMEDIATE',
              'caCertificate':
                  '-----BEGIN CERTIFICATE-----\n...\n-----END CERTIFICATE-----\r\n'
            },
            {
              'caType': 'ROOT',
              'caCertificate':
                  '-----BEGIN CERTIFICATE-----\n...\n-----END CERTIFICATE-----\r\n'
            }
          ],
          'authentication': {'method': 'FILE'}
        }
      ]
    };
    HttpUtils.client = MockClient((request) async {
      return Response(json.encode(mapJson), 200);
    });
    var cert = Certificate();
    var c = await provider.certificate.realtime(cert);
    expect(c.name, 'domain.de');
    expect(c.lifetime.period, 12);
    expect(c.lifetime.unit, TimeUnitConstants.MONTH);
  });
}
