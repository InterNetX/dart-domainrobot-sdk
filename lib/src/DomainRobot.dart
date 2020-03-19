import 'package:dart_domainrobot_sdk/src/clients/CertificateClient.dart';
import 'package:dart_domainrobot_sdk/src/clients/ContactClient.dart';
import 'package:dart_domainrobot_sdk/src/clients/DomainCancelationClient.dart';

import 'package:dart_domainrobot_sdk/src/clients/Domainclient.dart';
import 'package:dart_domainrobot_sdk/src/clients/DomainStudioClient.dart';
import 'package:dart_domainrobot_sdk/src/clients/PollClient.dart';
import 'package:dart_domainrobot_sdk/src/clients/SslContactClient.dart';
import 'package:dart_domainrobot_sdk/src/clients/TransferOutClient.dart';
import 'package:dart_domainrobot_sdk/src/clients/TrustedApplicationClient.dart';


///
/// Provider for the DomainRobot API
///
class DomainRobot {
  static const String TAG = 'DomainRobot';

  String version = '0.6.3';

  ///The domain service, containing all operations on domains
  Domainclient domain;
  
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
  ZoneClient zone;

  /// The poll service, containing all operations on poll messages.
  PollClient poll;

  /// The transferout service, containing all operations on transfer outs.
  TransferOutClient transferOut;

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
    domain = DomainClient(user, password, context, baseUrl, version);
    certificate = CertificateClient(user, password, context, baseUrl, version);
    domainStudio =
        DomainStudioClient(user, password, context, baseUrl, version);
    contact = ContactClient(user, password, context, baseUrl, version);
    trustedApplication =
        TrustedApplicationClient(user, password, context, baseUrl, version);
    sslContact = SslContactClient(user, password, context, baseUrl, version);
    domainCancelation =
        DomainCancelationClient(user, password, context, baseUrl, version);
    zone = ZoneClient(user, password, context, baseUrl, version);
    poll = PollClient(user, password, context, baseUrl, version);
    transferOut = TransferOutClient(user, password, context, baseUrl, version);
  }
}
