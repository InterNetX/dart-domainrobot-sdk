part of domainrobot_api;

class ContactClient {
  ///
  /// Sends a contactCreate request
  ///
  /// Throws an [HttpClientException] if the status code is not 200.
  ///
  static Future<Contact> contactCreate(
      String baseUrl, Contact payload, Map<String, String> headers,
      {Map<String, String> queryParameters}) async {
    String payloadAsString = json.encode(payload.toJson());
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.postForJson("$baseUrl/contact", payloadAsString,
          queryParameters: queryParameters, headers: headers);
    } catch (e) {
      throw e;
    }
    Map<String, dynamic> data = body["data"][0];
    return Contact.fromJson(data);
  }

  ///
  /// Sends a contactUpdate request
  ///
  /// Throws an [HttpClientException] if the status code is not 200.
  ///
  static Future<void> contactUpdate(
      String baseUrl, Contact payload, Map<String, String> headers) async {
    String payloadAsString = json.encode(payload.toJson());
    try {
      return await HttpUtils.putForJson(
          "$baseUrl/contact/${payload.id}", payloadAsString,
          headers: headers);
    } catch (e) {
      throw e;
    }
  }

  ///
  /// Sends a contactDelete request
  ///
  /// Throws an [HttpClientException] if the status code is not 200.
  ///
  static Future<void> contactDelete(
      String baseUrl, int id, Map<String, String> headers) async {
    try {
      return await HttpUtils.deleteForJson("$baseUrl/contact/$id",
          headers: headers);
    } catch (e) {
      throw e;
    }
  }

  ///
  /// Sends a contactInfo request
  ///
  /// Throws an [HttpClientException] if the status code is not 200.
  ///
  static Future<Contact> contactInfo(
      String baseUrl, int id, Map<String, String> headers) async {
    Map<String, dynamic> body;
    try {
      body =
          await HttpUtils.getForJson("$baseUrl/contact/$id", headers: headers);
    } catch (e) {
      throw e;
    }
    Map<String, dynamic> data = body["data"][0];
    return Contact.fromJson(data);
  }

  ///
  /// Sends a contactList request
  ///
  /// Throws an [HttpClientException] if the status code is not 200.
  ///
  static Future<List<Contact>> contactList(
      String baseUrl, Query payload, Map<String, String> headers,
      {Map<String, String> queryParameters}) async {
    String payloadAsString = "";
    if (payload != null) {
      payloadAsString = json.encode(payload.toJson());
    }
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.postForJson(
          "$baseUrl/contact/_search", payloadAsString,
          queryParameters: queryParameters, headers: headers);
    } catch (e) {
      throw e;
    }
    List data = body["data"];
    List<Contact> list = [];
    data.forEach((e) {
      Contact contact = new Contact.fromJson(e);
      list.add(contact);
    });
    return list;
  }
}
