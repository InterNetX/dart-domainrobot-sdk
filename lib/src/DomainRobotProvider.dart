import 'package:dart_domainrobot_sdk/src/clients/CertificateClient.dart';
import 'package:dart_domainrobot_sdk/src/clients/ContactClient.dart';

import 'package:dart_domainrobot_sdk/src/clients/DomainStudioClient.dart';
import 'package:dart_domainrobot_sdk/src/clients/TrustedApplicationClient.dart';

///
/// Provider for the DomainRobot API
///
class DomainRobotProvider {
  static const String TAG = 'DomainRobotProvider';

  /// The certificate service, containing all operations on certificates.
  CertificateClient certificate;

  /// The domainstudio service, containing all operations for the domainstudio.
  DomainStudioClient domainStudio;

  /// The contact service, containing all operations on contacts.
  ContactClient contact;

  /// The trusted application service, containing all operations on trusted applications.
  TrustedApplicationClient trustedApplication;

  DomainRobotProvider(
    String userName,
    String password,
    String context,
    String baseUrl,
  ) {
    certificate = CertificateClient(userName, password, context, baseUrl);
    domainStudio = DomainStudioClient(userName, password, context, baseUrl);
    contact = ContactClient(userName, password, context, baseUrl);
    trustedApplication =
        TrustedApplicationClient(userName, password, context, baseUrl);
  }
}
