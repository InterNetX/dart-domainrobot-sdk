import 'package:json_annotation/json_annotation.dart';
import 'DomainPrereg.dart';
import 'Query.dart';

part 'BulkDomainPreregPatchRequest.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class BulkDomainPreregPatchRequest {
  /// The objects to process
  List<DomainPrereg> objects;

  /// The template for objects to process
  DomainPrereg template;

  /// The query to fetch the object instead of defined list
  Query query;

  BulkDomainPreregPatchRequest({
    this.objects,
    this.template,
    this.query,
  });

  @override
  String toString() {
    return 'BulkDomainPreregPatchRequest[objects=$objects, template=$template, query=$query, ]';
  }

  ///
  /// Json to Location object
  ///
  factory BulkDomainPreregPatchRequest.fromJson(Map<String, dynamic> json) =>
      _$BulkDomainPreregPatchRequestFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$BulkDomainPreregPatchRequestToJson(this);
}
