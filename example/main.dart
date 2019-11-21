import 'package:dart_domainrobot_sdk/dart_domainrobot_sdk.dart';

main(List<String> args) async {
  // The domainrobot credentials and the baseUrl
  String userName = "USER";
  String password = "PASSWORD";
  String context = "CONTEXT";
  String baseUrl = "URL";

  // Setup the provider
  DomainRobotProvider provider =
      DomainRobotProvider(userName, password, context, baseUrl);

  String ctid = "Some UUID";
  // Define
  Map<String, String> headers = {
    DOMAINROBOT_HEADER_WEBSOCKET: "SYNC",
    DOMAINROBOT_HEADER_CTID: ctid,
  };
  DomainStudioSearch search = DomainStudioSearch(
    searchToken: "treehouse",
    sources: DomainStudioSources(
      initial: DomainStudioSourceInitial(
        tlds: ["com", "net", "de"],
      ),
    ),
  );
  List<DomainStudioDomain> domains =
      await provider.domainStudioSearch(search, headers: headers);
  for (DomainStudioDomain domain in domains) {
    print(domain.domain);
  }
}
