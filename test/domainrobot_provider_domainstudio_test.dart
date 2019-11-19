import 'dart:convert';

import 'package:basic_utils/basic_utils.dart';
import 'package:domainrobot_api/src/model/domainstudio/DomainStudioDomain.dart';
import 'package:domainrobot_api/src/model/domainstudio/DomainStudioSearch.dart';
import 'package:domainrobot_api/src/model/domainstudio/DomainStudioServiceStatus.dart';
import 'package:domainrobot_api/src/model/domainstudio/DomainStudioSource.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import "package:test/test.dart";
import 'package:domainrobot_api/domainrobot_api.dart';

void main() {
  DomainRobotProvider provider =
      DomainRobotProvider("hello", "world", "4", "https://api.com");

  test('Test domain studio search', () async {
    HttpUtils.client = MockClient((request) async {
      final mapJson = {
        "stid": "20190702-stid",
        "data": [
          {
            "domain": "ebike.com",
            "source": "RECOMMENDED",
            "services": {
              "whois": {
                "status": "SUCCESS",
                "data": {"status": "ASSIGNED"}
              },
              "price": {
                "status": "SUCCESS",
                "data": {
                  "prices": [
                    {
                      "price": {
                        "amount": 12.59,
                        "type": "NET",
                        "currency": "EUR"
                      },
                      "businessCase": "create"
                    },
                    {
                      "price": {
                        "amount": 12.59,
                        "type": "NET",
                        "currency": "EUR"
                      },
                      "businessCase": "transfer"
                    },
                    {
                      "price": {
                        "amount": 12.59,
                        "type": "NET",
                        "currency": "EUR"
                      },
                      "businessCase": "renew"
                    }
                  ]
                }
              }
            }
          },
          {
            "domain": "ebike.de",
            "idn": "ebike.de",
            "source": "INITIAL",
            "services": {
              "whois": {
                "status": "SUCCESS",
                "data": {"status": "ASSIGNED"}
              },
              "price": {
                "status": "SUCCESS",
                "data": {
                  "prices": [
                    {
                      "price": {
                        "amount": 6.6,
                        "type": "NET",
                        "currency": "EUR"
                      },
                      "businessCase": "create"
                    },
                    {
                      "price": {
                        "amount": 6.6,
                        "type": "NET",
                        "currency": "EUR"
                      },
                      "businessCase": "transfer"
                    },
                    {
                      "price": {
                        "amount": 6.84,
                        "type": "NET",
                        "currency": "EUR"
                      },
                      "businessCase": "order"
                    },
                    {
                      "price": {
                        "amount": 6.6,
                        "type": "NET",
                        "currency": "EUR"
                      },
                      "businessCase": "renew"
                    }
                  ]
                }
              },
              "estimation": {
                "status": "SUCCESS",
                "data": {"currency": "USD", "amount": 618}
              }
            }
          },
          {
            "domain": "e.bike",
            "source": "SIMILAR",
            "services": {
              "whois": {
                "status": "SUCCESS",
                "data": {"status": "ASSIGNED"}
              },
              "price": {
                "status": "SUCCESS",
                "data": {
                  "prices": [
                    {
                      "price": {"amount": 23, "type": "NET", "currency": "EUR"},
                      "businessCase": "create"
                    },
                    {
                      "price": {"amount": 23, "type": "NET", "currency": "EUR"},
                      "businessCase": "transfer"
                    },
                    {
                      "price": {"amount": 23, "type": "NET", "currency": "EUR"},
                      "businessCase": "renew"
                    }
                  ]
                }
              }
            }
          },
          {
            "domain": "RadioEBike.com",
            "idn": "radioebike.com",
            "source": "SUGGESTION",
            "services": {
              "whois": {
                "status": "SUCCESS",
                "data": {"status": "FREE"}
              },
              "price": {
                "status": "SUCCESS",
                "data": {
                  "prices": [
                    {
                      "price": {
                        "amount": 12.59,
                        "type": "NET",
                        "currency": "EUR"
                      },
                      "businessCase": "create"
                    },
                    {
                      "price": {
                        "amount": 12.59,
                        "type": "NET",
                        "currency": "EUR"
                      },
                      "businessCase": "transfer"
                    },
                    {
                      "price": {
                        "amount": 12.59,
                        "type": "NET",
                        "currency": "EUR"
                      },
                      "businessCase": "renew"
                    }
                  ]
                }
              }
            }
          },
          {
            "domain": "ebike.tickets",
            "source": "PREMIUM",
            "services": {
              "whois": {
                "status": "SUCCESS",
                "data": {"status": "PREMIUM"}
              },
              "price": {
                "status": "SUCCESS",
                "data": {
                  "prices": [
                    {
                      "price": {
                        "amount": 519,
                        "type": "NET",
                        "currency": "EUR"
                      },
                      "businessCase": "create"
                    },
                    {
                      "price": {
                        "amount": 519,
                        "type": "NET",
                        "currency": "EUR"
                      },
                      "businessCase": "transfer"
                    },
                    {
                      "price": {
                        "amount": 519,
                        "type": "NET",
                        "currency": "EUR"
                      },
                      "businessCase": "renew"
                    }
                  ]
                }
              },
              "estimation": {
                "status": "SUCCESS",
                "data": {"currency": "USD", "amount": 295}
              }
            }
          }
        ]
      };
      return Response(json.encode(mapJson), 200);
    });
    List<DomainStudioDomain> list =
        await provider.domainStudioSearch(new DomainStudioSearch());

    expect(list.length, 5);
    expect(list.elementAt(0).domain, "ebike.com");
    expect(list.elementAt(0).source, DomainStudioSource.RECOMMENDED);
    expect(list.elementAt(0).services.estimation, null);
    expect(list.elementAt(4).domain, "ebike.tickets");
    expect(list.elementAt(4).source, DomainStudioSource.PREMIUM);
    expect(list.elementAt(4).services.estimation.status,
        DomainStudioServiceStatus.SUCCESS);
    expect(list.elementAt(4).services.estimation.data.currency, "USD");
    expect(list.elementAt(4).services.estimation.data.amount, 295);
  });
}
