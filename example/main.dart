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
  // Define the custom headers
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
  try {
    List<DomainStudioDomain> domains =
        await provider.domainStudioSearch(search, headers: headers);
    if (domains != null && domains.isNotEmpty) {
      print("Result from the DomainStudio:");
      for (DomainStudioDomain domain in domains) {
        print(domain.domain);
      }
    }
  } on DomainRobotApiException catch (e) {
    // Handle error from the API
    print("Got http status > 299");
    print(e.toString());
  } on Exception catch (e) {
    // Handle any other exception
    print("Unexpected error while communicating with the api.");
    print(e.toString());
  }
}
