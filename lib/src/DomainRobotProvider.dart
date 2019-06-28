part of domainrobot_api;

///
///
///
class DomainRobotProvider {
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
    try {
      return await ContactClient.contactCreate(
          _baseUrl, contact, getBasicHeaders(ctid));
    } catch (e) {
      _handleException(e);
    }
    return null;
  }

  ///
  /// Update an existing contact
  ///
  /// Throws an [DomainRobotApiException] if the status code was not 200 and it received a json response.
  ///
  Future<Contact> contactUpdate(Contact contact, {String ctid = ""}) async {
    Logger(TAG).info("Sending contactCreate");
    try {
      return await ContactClient.contactCreate(
          _baseUrl, contact, getBasicHeaders(ctid));
    } catch (e) {
      _handleException(e);
    }
    return null;
  }

  ///
  /// Delete an existing contact
  ///
  /// Throws an [DomainRobotApiException] if the status code was not 200 and it received a json response.
  ///
  Future<void> contactDelete(int id, {String ctid = ""}) async {
    Logger(TAG).info("Sending contactDelete");
    try {
      await ContactClient.contactDelete(_baseUrl, id, getBasicHeaders(ctid));
    } catch (e) {
      _handleException(e);
    }
  }

  ///
  /// Fetch a contact
  ///
  /// Throws an [DomainRobotApiException] if the status code was not 200 and it received a json response.
  ///
  Future<Contact> contactInfo(int id, {String ctid = ""}) async {
    Logger(TAG).info("Sending contactCreate");
    try {
      return await ContactClient.contactInfo(
          _baseUrl, id, getBasicHeaders(ctid));
    } catch (e) {
      _handleException(e);
    }
    return null;
  }

  ///
  /// List all contacts
  ///
  /// Throws an [DomainRobotApiException] if the status code was not 200 and it received a json response.
  ///
  Future<List<Contact>> contactList({Query query, String ctid = ""}) async {
    Logger(TAG).info("Sending contactCreate");
    Map<String, String> queryParameters = <String, String>{};
    try {
      return await ContactClient.contactList(
          _baseUrl, query, getBasicHeaders(ctid),
          queryParameters: queryParameters);
    } catch (e) {
      _handleException(e);
    }
    return null;
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

  ///
  ///
  ///
  void _handleException(Exception e) {
    HttpResponseException ex = e;
    Map<String, dynamic> data = json.decode(ex.body);
    DomainRobotApiResponse response = DomainRobotApiResponse.fromJson(data);
    throw DomainRobotApiException(response.messages.elementAt(0).text,
        response.messages.elementAt(0).code,
        stid: response.stid, body: response, headers: ex.headers);
  }
}
