import 'package:json_annotation/json_annotation.dart';
import 'Query.dart';
import 'Redirect.dart';

part 'BulkRedirectPatchRequest.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class BulkRedirectPatchRequest {
  /// The objects to process
  List<Redirect> objects;

  /// The template for objects to process
  Redirect template;

  /// The query to fetch the object instead of defined list
  Query query;

  BulkRedirectPatchRequest({
    this.objects,
    this.template,
    this.query,
  });

  @override
  String toString() {
    return 'BulkRedirectPatchRequest[objects=$objects, template=$template, query=$query, ]';
  }

  ///
  /// Json to Location object
  ///
  factory BulkRedirectPatchRequest.fromJson(Map<String, dynamic> json) =>
      _$BulkRedirectPatchRequestFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$BulkRedirectPatchRequestToJson(this);
}
