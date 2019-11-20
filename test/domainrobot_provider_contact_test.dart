import 'dart:convert';

import 'package:basic_utils/basic_utils.dart';
import 'package:dart_domainrobot_sdk/src/model/contact/Contact.dart';
import 'package:dart_domainrobot_sdk/src/model/exception/DomainRobotApiException.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import "package:test/test.dart";
import 'package:dart_domainrobot_sdk/dart_domainrobot_sdk.dart';

void main() {
  DomainRobotProvider provider =
      DomainRobotProvider("hello", "world", "4", "https://api.com");

  test('Test contactInfo', () async {
    HttpUtils.client = MockClient((request) async {
      final mapJson = {
        "status": {
          "code": "S0304",
          "text": "Domainkontakt-Daten wurden erfolgreich ermittelt.",
          "type": "SUCCESS"
        },
        "object": {"type": "Contact", "value": "100"},
        "data": [
          {
            "created": "2015-09-28T11:38:59.000+0200",
            "updated": "2015-09-28T11:38:59.000+0200",
            "id": 100,
            "owner": {"context": 4, "user": "user-owner"},
            "updater": {"context": 4, "user": "user-updater"},
            "alias": "Jon-Doe",
            "type": "PERSON",
            "title": "Prof.",
            "city": "Regensburg",
            "country": "DE",
            "state": "Bayern",
            "email": "jon@doe.com",
            "protection": "SHOW_ALL",
            "fname": "Jon",
            "lname": "Doe",
            "address": ["Fakestreet 123"],
            "pcode": "12345",
            "phone": "+49-0-00",
            "fax": "+49-0-00"
          }
        ]
      };
      return Response(json.encode(mapJson), 200);
    });
    Contact persistent = await provider.contactInfo(100);

    expect(persistent.id, 100);
    expect(persistent.fname, "Jon");
    expect(persistent.lname, "Doe");
  });

  test('Test contactNotFound', () async {
    HttpUtils.client = MockClient((request) async {
      final mapJson = {
        "stid": "20190627-test-1",
        "messages": [
          {
            "text": "Ungueltiger Domainkontakt.",
            "objects": [
              {"type": "handle", "value": "12345"}
            ],
            "code": "EF03014",
            "status": "ERROR"
          }
        ],
        "status": {
          "code": "E0304",
          "text": "Domainkontakt-Daten konnten nicht ermittelt werden.",
          "type": "ERROR"
        },
        "object": {"type": "Contact", "value": "12345"}
      };
      return Response(json.encode(mapJson), 404);
    });
    try {
      await provider.contactInfo(12345);
      fail("Expected exception!");
    } catch (e) {
      DomainRobotApiException ex = e;
      expect(ex.errorCode, "EF03014");
      expect(ex.message, "Ungueltiger Domainkontakt.");
      expect(ex.stid, "20190627-test-1");
    }
  });

  test('Test contactList', () async {
    HttpUtils.client = MockClient((request) async {
      final mapJson = {
        "stid": "20180918-test-1",
        "status": {
          "code": "S0304",
          "text": "Domainkontakt-Daten wurden erfolgreich ermittelt.",
          "type": "SUCCESS"
        },
        "object": {"type": "Contact", "summary": 2},
        "data": [
          {
            "created": "2015-09-28T11:38:59.000+0200",
            "updated": "2015-09-28T11:38:59.000+0200",
            "id": 100,
            "owner": {"context": 4, "user": "user-owner"},
            "updater": {"context": 4, "user": "user-updater"},
            "alias": "Jon-Doe",
            "type": "PERSON",
            "title": "Prof.",
            "city": "Regensburg",
            "country": "DE",
            "state": "Bayern",
            "email": "jon@doe.com",
            "protection": "SHOW_ALL",
            "fname": "Jon",
            "lname": "Doe",
            "address": ["Fakestreet 123"],
            "pcode": "12345",
            "phone": "+49-0-00",
            "fax": "+49-0-00"
          },
          {
            "created": "2015-09-28T11:38:59.000+0200",
            "updated": "2015-09-28T11:38:59.000+0200",
            "id": 101,
            "owner": {"context": 4, "user": "user-owner"},
            "updater": {"context": 4, "user": "user-updater"},
            "alias": "Jane-Doe",
            "type": "PERSON",
            "title": "Prof.",
            "city": "Regensburg",
            "country": "DE",
            "state": "Bayern",
            "email": "jane@doe.com",
            "protection": "SHOW_ALL",
            "fname": "Jane",
            "lname": "Doe",
            "address": ["Fakestreet 123"],
            "pcode": "12345",
            "phone": "+49-0-00",
            "fax": "+49-0-00"
          }
        ]
      };
      return Response(json.encode(mapJson), 200);
    });
    List<Contact> contacts = await provider.contactList();

    expect(contacts.length, 2);
    expect(contacts.elementAt(0).id, 100);
    expect(contacts.elementAt(0).fname, "Jon");
    expect(contacts.elementAt(0).lname, "Doe");
    expect(contacts.elementAt(1).id, 101);
    expect(contacts.elementAt(1).fname, "Jane");
    expect(contacts.elementAt(1).lname, "Doe");
  });
}
