import 'package:dart_domainrobot_sdk/src/clients/CertificateClient.dart';
import 'package:dart_domainrobot_sdk/src/clients/ContactClient.dart';
import 'package:dart_domainrobot_sdk/src/clients/DomainCancelationClient.dart';

import 'package:dart_domainrobot_sdk/src/clients/DomainStudioClient.dart';
import 'package:dart_domainrobot_sdk/src/clients/PollClient.dart';
import 'package:dart_domainrobot_sdk/src/clients/SslContactClient.dart';
import 'package:dart_domainrobot_sdk/src/clients/TrustedApplicationClient.dart';

import 'clients/ZoneClient.dart';

///
/// Provider for the DomainRobot API
///
class DomainRobot {
  static const String TAG = 'DomainRobot';

  String version = '0.3.0';

  /// The certificate service, containing all operations on certificates.
  CertificateClient certificate;

  /// The domainstudio service, containing all operations for the domainstudio.
  DomainStudioClient domainStudio;

  /// The contact service, containing all operations on contacts.
  ContactClient contact;

  /// The trusted application service, containing all operations on trusted applications.
  TrustedApplicationClient trustedApplication;

  /// The sslcontact service, containing all operations on contacts.
  SslContactClient sslContact;

  /// The domain cancelation service, containing all operations on domain cancelations.
  DomainCancelationClient domainCancelation;

  /// The zone service, containing all operations on zones.
  ZoneClient zoneClient;

  /// The poll service, containing all operations on poll messages.
  PollClient pollClient;

  ///
  /// Creates a new instance of the domainrobot provider, that gives access to the json api.
  ///
  /// You can use one of the following base urls :
  /// * Livesystem: https://api.autodns.com/v1
  /// * Demosystem: https://api.demo.autodns.com/v1
  ///
  /// **Note:** Consider that each system has normally their own credentials!
  ///
  /// **Parameter:**
  /// * [user] : The user for the api
  /// * [context] : The context for the user. Normally "4"
  /// * [password] : The password of the user
  /// * [baseUrl] : The base url for the api
  ///
  DomainRobot(
    String user,
    String password,
    String context,
    String baseUrl,
  ) {
    certificate = CertificateClient(user, password, context, baseUrl, version);
    domainStudio =
        DomainStudioClient(user, password, context, baseUrl, version);
    contact = ContactClient(user, password, context, baseUrl, version);
    trustedApplication =
        TrustedApplicationClient(user, password, context, baseUrl, version);
    sslContact = SslContactClient(user, password, context, baseUrl, version);
    domainCancelation =
        DomainCancelationClient(user, password, context, baseUrl, version);
    zoneClient = ZoneClient(user, password, context, baseUrl, version);
    pollClient = PollClient(user, password, context, baseUrl, version);
  }
}
