part of domainrobot_api;

///
///
///
class DomainRobotProvider extends TrustedApplicationClient {
  static const String TAG = "DomainRobotProvider";

  String _userName;
  String _password;
  String _context;
  String _baseUrl;

  DomainRobotProvider(
      this._userName, this._password, this._context, this._baseUrl);

  ///
  /// Create a new contact
  ///
  /// Throws an [DomainRobotApiException] if the status code was not 200 and it received a json response.
  ///
  Future<Contact> contactCreate(Contact contact, {String ctid = ""}) async {
    Logger(TAG).info("Sending contactCreate");
    return await ContactClient.contactCreate(
        _baseUrl, contact, getBasicHeaders(ctid));
  }

  ///
  /// Update an existing contact
  ///
  /// Throws an [DomainRobotApiException] if the status code was not 200 and it received a json response.
  ///
  Future<Contact> contactUpdate(Contact contact, {String ctid = ""}) async {
    Logger(TAG).info("Sending contactCreate");
    return await ContactClient.contactCreate(
        _baseUrl, contact, getBasicHeaders(ctid));
  }

  ///
  /// Delete an existing contact
  ///
  /// Throws an [DomainRobotApiException] if the status code was not 200 and it received a json response.
  ///
  Future<void> contactDelete(int id, {String ctid = ""}) async {
    Logger(TAG).info("Sending contactDelete");
    await ContactClient.contactDelete(_baseUrl, id, getBasicHeaders(ctid));
  }

  ///
  /// Fetch a contact
  ///
  /// Throws an [DomainRobotApiException] if the status code was not 200 and it received a json response.
  ///
  Future<Contact> contactInfo(int id, {String ctid = ""}) async {
    Logger(TAG).info("Sending contactCreate");
    return await ContactClient.contactInfo(_baseUrl, id, getBasicHeaders(ctid));
  }

  ///
  /// List all contacts
  ///
  /// Throws an [DomainRobotApiException] if the status code was not 200 and it received a json response.
  ///
  Future<List<Contact>> contactList(
      {Query query,
      String ctid = "",
      Map<String, String> queryParameters}) async {
    Logger(TAG).info("Sending contactCreate");
    return await ContactClient.contactList(
        _baseUrl, query, getBasicHeaders(ctid),
        queryParameters: queryParameters);
  }

  ///
  /// Register a new domain. This function is asynchronous and returns a running job.
  ///
  /// Throws an [DomainRobotApiException] if the status code was not 200 and it received a json response.
  ///
  Future<Job> domainCreate(DomainRobotDomain domain, {String ctid = ""}) async {
    Logger(TAG).info("Sending domainCreate");
    return await DomainClient.domainCreate(
        _baseUrl, domain, getBasicHeaders(ctid));
  }

  ///
  /// Update an existing domain. This function is asynchronous and returns a running job.
  ///
  /// Throws an [DomainRobotApiException] if the status code was not 200 and it received a json response.
  ///
  Future<Job> domainUpdate(DomainRobotDomain domain, {String ctid = ""}) async {
    Logger(TAG).info("Sending domainUpdate");
    return await DomainClient.domainUpdate(
        _baseUrl, domain, getBasicHeaders(ctid));
  }

  ///
  /// Fetch data for an existing domain.
  ///
  /// Throws an [DomainRobotApiException] if the status code was not 200 and it received a json response.
  ///
  Future<DomainRobotDomain> domainInfo(String name, {String ctid = ""}) async {
    Logger(TAG).info("Sending domainInfo");
    return await DomainClient.domainInfo(_baseUrl, name, getBasicHeaders(ctid));
  }

  ///
  /// List all domains
  ///
  /// Throws an [DomainRobotApiException] if the status code was not 200 and it received a json response.
  ///
  Future<List<DomainRobotDomain>> domainList(
      {Query query,
      String ctid = "",
      Map<String, String> queryParameters}) async {
    Logger(TAG).info("Sending domainList");
    return await DomainClient.domainList(_baseUrl, query, getBasicHeaders(ctid),
        queryParameters: queryParameters);
  }

  ///
  /// Create a new trusted application
  ///
  /// Throws an [DomainRobotApiException] if the status code was not 200 and it received a json response.
  ///
  Future<TrustedApplication> trustedApplicationCreate(
      TrustedApplication trustedApp,
      {String ctid = ""}) async {
    Logger(TAG).info("Sending trustedApplicationCreate");
    return await TrustedApplicationClient.trustedApplicationCreate(
        _baseUrl, trustedApp, getBasicHeaders(ctid));
  }

  ///
  /// Update an existing trusted application
  ///
  /// Throws an [DomainRobotApiException] if the status code was not 200 and it received a json response.
  ///
  Future<TrustedApplication> trustedApplicationUpdate(
      TrustedApplication trustedApp,
      {String ctid = ""}) async {
    Logger(TAG).info("Sending trustedApplicationUpdate");
    return await TrustedApplicationClient.trustedApplicationUpdate(
        _baseUrl, trustedApp, getBasicHeaders(ctid));
  }

  ///
  /// Update an existing trusted application
  ///
  /// Throws an [DomainRobotApiException] if the status code was not 200 and it received a json response.
  ///
  Future<void> trustedApplicationDelete(String uuid, {String ctid = ""}) async {
    Logger(TAG).info("Sending trustedApplicationDelete");
    return await TrustedApplicationClient.trustedApplicationDelete(
        _baseUrl, uuid, getBasicHeaders(ctid));
  }

  ///
  /// Fetch data for an existing trusted application.
  ///
  /// Throws an [DomainRobotApiException] if the status code was not 200 and it received a json response.
  ///
  Future<TrustedApplication> trustedApplicationInfo(String uuid,
      {String ctid = ""}) async {
    Logger(TAG).info("Sending trustedApplicationInfo");
    return await TrustedApplicationClient.trustedApplicationInfo(
        _baseUrl, uuid, getBasicHeaders(ctid));
  }

  ///
  /// List all trusted applications
  ///
  /// Throws an [DomainRobotApiException] if the status code was not 200 and it received a json response.
  ///
  Future<List<TrustedApplication>> trustedApplicationList(
      {Query query,
      String ctid = "",
      Map<String, String> queryParameters}) async {
    Logger(TAG).info("Sending trustedApplicationList");
    return await TrustedApplicationClient.trustedApplicationList(
        _baseUrl, query, getBasicHeaders(ctid),
        queryParameters: queryParameters);
  }

  ///
  /// Builds the basic headers that are needed by the domainrobot api
  ///
  Map<String, String> getBasicHeaders(String ctid) {
    Map<String, String> headers = <String, String>{};
    String auth = base64.encode(utf8.encode("$_userName:$_password"));
    auth = "Basic $auth";
    headers.putIfAbsent("authorization", () => auth);
    headers.putIfAbsent("X-Domainrobot-Context", () => _context);
    headers.putIfAbsent("Accept", () => "application/json");
    if (StringUtils.isNotNullOrEmpty(ctid)) {
      headers.putIfAbsent("X-Domainrobot-Ctid", () => ctid);
    }
    return headers;
  }
}
