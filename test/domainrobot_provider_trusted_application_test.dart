import 'dart:convert';

import 'package:basic_utils/basic_utils.dart';
import 'package:dart_domainrobot_sdk/src/model/application/TrustedApplication.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import "package:test/test.dart";
import 'package:dart_domainrobot_sdk/domainrobot_api.dart';

void main() {
  DomainRobotProvider provider =
      DomainRobotProvider("hello", "world", "4", "https://api.com");

  test('Test trustedApplicationCreate', () async {
    HttpUtils.client = MockClient((request) async {
      final mapJson = {
        "stid": "20190705-test1",
        "status": {
          "code": "S1322001",
          "text": "Vertrauenswürdige Anwendung wurde erfolgreich angelegt.",
          "type": "SUCCESS"
        },
        "object": {
          "type": "TrustedApplication",
          "value": "b6351bcb-e5e4-4b95-930f-2a2dff9cb795"
        },
        "data": [
          {
            "created": "2019-07-05T15:58:48.000+0200",
            "updated": "2019-07-05T15:58:48.000+0200",
            "owner": {"context": 4, "user": "testuser"},
            "updater": {"context": 4, "user": "testuser"},
            "user": {"context": 4, "user": "testuser"},
            "uuid": "b6351bcb-e5e4-4b95-930f-2a2dff9cb795",
            "application": {
              "name": "test-app",
              "functionCodes": [
                "1322002",
                "0304",
                "0304-LIST",
                "0301",
                "0302",
                "0101",
                "09911"
              ]
            },
            "functions": {
              "functionCodes": [
                "1322002",
                "0304",
                "0304-LIST",
                "0301",
                "0302",
                "0101",
                "09911"
              ]
            },
            "device": "Android Device",
            "comment": "Hello World",
            "password": "4%k[CBDF4=83F+gPw{a!"
          }
        ]
      };
      return Response(json.encode(mapJson), 200);
    });
    TrustedApplication trustedApp =
        await provider.trustedApplicationCreate(new TrustedApplication());

    expect(trustedApp.device, "Android Device");
    expect(trustedApp.comment, "Hello World");
    expect(trustedApp.application.name, "test-app");
  });

  test('Test trustedApplicationInfo', () async {
    HttpUtils.client = MockClient((request) async {
      final mapJson = {
        "stid": "20190705-test1",
        "status": {
          "code": "S1322004",
          "text": "Vertrauenswürdige Anwendung wurde erfolgreich ermittelt.",
          "type": "SUCCESS"
        },
        "object": {
          "type": "TrustedApplication",
          "value": "b6351bcb-e5e4-4b95-930f-2a2dff9cb795"
        },
        "data": [
          {
            "created": "2019-07-05T15:58:48.000+0200",
            "updated": "2019-07-05T15:58:48.000+0200",
            "owner": {"context": 4, "user": "testuser"},
            "updater": {"context": 4, "user": "testuser"},
            "user": {"context": 4, "user": "testuser"},
            "uuid": "b6351bcb-e5e4-4b95-930f-2a2dff9cb795",
            "application": {
              "name": "test-app",
              "functionCodes": [
                "1322002",
                "0304",
                "0304-LIST",
                "0301",
                "0302",
                "0101",
                "09911"
              ]
            },
            "functions": {
              "functionCodes": [
                "1322002",
                "0304",
                "0304-LIST",
                "0301",
                "0302",
                "0101",
                "09911"
              ]
            },
            "device": "Android Device",
            "comment": "Hello World"
          }
        ]
      };
      return Response(json.encode(mapJson), 200);
    });
    TrustedApplication trustedApp = await provider
        .trustedApplicationInfo("b6351bcb-e5e4-4b95-930f-2a2dff9cb795");

    expect(trustedApp.device, "Android Device");
    expect(trustedApp.comment, "Hello World");
    expect(trustedApp.application.name, "test-app");
  });

  test('Test trustedApplicationUpdate', () async {
    HttpUtils.client = MockClient((request) async {
      final mapJson = {
        "stid": "20190705-test1",
        "status": {
          "code": "S1322002",
          "text": "Vertrauenswürdige Anwendung wurde erfolgreich geändert.",
          "type": "SUCCESS"
        },
        "object": {
          "type": "TrustedApplication",
          "value": "b6351bcb-e5e4-4b95-930f-2a2dff9cb795"
        },
        "data": [
          {
            "created": "2019-07-05T15:58:48.000+0200",
            "updated": "2019-07-05T16:13:40.000+0200",
            "owner": {"context": 4, "user": "testuser"},
            "updater": {"context": 4, "user": "testuser"},
            "user": {"context": 4, "user": "testuser"},
            "uuid": "b6351bcb-e5e4-4b95-930f-2a2dff9cb795",
            "application": {
              "name": "test-app",
              "functionCodes": [
                "1322002",
                "0304",
                "0304-LIST",
                "0301",
                "0302",
                "0101",
                "09911"
              ]
            },
            "functions": {
              "functionCodes": [
                "1322002",
                "0304",
                "0304-LIST",
                "0301",
                "0302",
                "0101",
                "09911"
              ]
            },
            "device": "Iphone XL"
          }
        ]
      };
      return Response(json.encode(mapJson), 200);
    });
    TrustedApplication app = TrustedApplication();
    app.uuid = "b6351bcb-e5e4-4b95-930f-2a2dff9cb795";
    app.device = "Iphone XL";
    TrustedApplication trustedApp =
        await provider.trustedApplicationUpdate(app);

    expect(trustedApp.device, "Iphone XL");
    expect(trustedApp.application.name, "test-app");
  });

  test('Test trustedApplicationDelete', () async {
    HttpUtils.client = MockClient((request) async {
      final mapJson = {
        "stid": "20190705-test1",
        "status": {
          "code": "S1322003",
          "text": "Vertrauenswürdige Anwendung wurde erfolgreich gelöscht.",
          "type": "SUCCESS"
        },
        "object": {
          "type": "TrustedApplication",
          "value": "b6351bcb-e5e4-4b95-930f-2a2dff9cb795"
        }
      };
      return Response(json.encode(mapJson), 200);
    });
    await provider
        .trustedApplicationDelete("b6351bcb-e5e4-4b95-930f-2a2dff9cb795");
  });

  test('Test trustedApplicationList', () async {
    HttpUtils.client = MockClient((request) async {
      final mapJson = {
        "stid": "20190705-test1",
        "status": {"code": "S1322005", "text": "S1322005", "type": "SUCCESS"},
        "object": {"type": "TrustedApplication", "summary": 7},
        "data": [
          {
            "created": "2019-01-15T16:10:34.000+0100",
            "updated": "2019-02-22T15:03:04.000+0100",
            "owner": {"context": 4, "user": "testuser"},
            "user": {"context": 4, "user": "testuser"},
            "uuid": "7b129a79-c325-45e7-b87d-c69256bb3851",
            "application": {"name": "autodns_companion"},
            "device": "generic_x86"
          },
          {
            "created": "2018-12-18T10:54:53.000+0100",
            "updated": "2019-01-15T16:00:20.000+0100",
            "owner": {"context": 4, "user": "testuser"},
            "user": {"context": 4, "user": "testuser"},
            "uuid": "2f182928-84ec-4434-ad14-e284e039b7cf",
            "application": {"name": "JSON"}
          },
          {
            "created": "2018-12-18T11:41:50.000+0100",
            "updated": "2018-12-18T11:51:17.000+0100",
            "owner": {"context": 4, "user": "testuser"},
            "user": {"context": 4, "user": "testuser"},
            "uuid": "88cbf0e1-dc73-482b-bb5b-8a4c7d1affec",
            "application": {"name": "JSON"},
            "device": "SamsungS9"
          },
          {
            "created": "2018-08-17T09:40:42.000+0200",
            "updated": "2019-03-01T12:57:49.000+0100",
            "owner": {"context": 4, "user": "testuser"},
            "user": {"context": 4, "user": "testuser"},
            "uuid": "9ea6aaf1-94b8-4bab-af08-97e3c0a11bec",
            "application": {"name": "price_list"}
          },
          {
            "created": "2017-04-07T10:38:45.000+0200",
            "updated": "2017-04-07T10:38:45.000+0200",
            "owner": {"context": 4, "user": "testuser"},
            "user": {"context": 4, "user": "testuser"},
            "uuid": "9a4279f6-a0ed-4bbf-90c1-54e743cef6ed",
            "application": {"name": "SSLManager"}
          },
          {
            "created": "2018-12-17T14:34:44.000+0100",
            "updated": "2018-12-17T14:34:44.000+0100",
            "owner": {"context": 4, "user": "testuser"},
            "user": {"context": 4, "user": "testuser"},
            "uuid": "",
            "application": {"name": "SSLManager"},
            "device": "Android Device"
          },
          {
            "created": "2019-04-11T15:44:50.000+0200",
            "updated": "2019-04-11T15:44:50.000+0200",
            "owner": {"context": 4, "user": "testuser"},
            "user": {"context": 4, "user": "testuser"},
            "uuid": "015ebc29-7bda-4952-a7fc-c27cccaa94b5",
            "application": {"name": "SSLManager"}
          }
        ]
      };
      return Response(json.encode(mapJson), 200);
    });
    List<TrustedApplication> list = await provider.trustedApplicationList();
    expect(list.length, 7);
    expect(list.elementAt(0).uuid, "7b129a79-c325-45e7-b87d-c69256bb3851");
  });
}
