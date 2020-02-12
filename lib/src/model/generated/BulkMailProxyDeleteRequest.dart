import 'package:json_annotation/json_annotation.dart';
import 'MailProxy.dart';
import 'Query.dart';

part 'BulkMailProxyDeleteRequest.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class BulkMailProxyDeleteRequest {
  /// The objects to process
  List<MailProxy> objects;

  /// The query to fetch the object instead of defined list
  Query query;

  BulkMailProxyDeleteRequest({
    this.objects,
    this.query,
  });

  @override
  String toString() {
    return 'BulkMailProxyDeleteRequest[objects=$objects, query=$query, ]';
  }

  ///
  /// Json to Location object
  ///
  factory BulkMailProxyDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$BulkMailProxyDeleteRequestFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$BulkMailProxyDeleteRequestToJson(this);
}
