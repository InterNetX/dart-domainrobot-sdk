import 'package:json_annotation/json_annotation.dart';
import 'MailProxy.dart';
import 'Query.dart';

part 'BulkMailProxyPatchRequest.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class BulkMailProxyPatchRequest {
  /// The objects to process
  List<MailProxy> objects;

  /// The template for objects to process
  MailProxy template;

  /// The query to fetch the object instead of defined list
  Query query;

  BulkMailProxyPatchRequest({
    this.objects,
    this.template,
    this.query,
  });

  @override
  String toString() {
    return 'BulkMailProxyPatchRequest[objects=$objects, template=$template, query=$query, ]';
  }

  ///
  /// Json to Location object
  ///
  factory BulkMailProxyPatchRequest.fromJson(Map<String, dynamic> json) =>
      _$BulkMailProxyPatchRequestFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$BulkMailProxyPatchRequestToJson(this);
}
