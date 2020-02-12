import 'package:json_annotation/json_annotation.dart';
import 'DomainCancelation.dart';
import 'Query.dart';

part 'BulkDomainCancelationPatchRequest.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class BulkDomainCancelationPatchRequest {
  /// The objects to process
  List<DomainCancelation> objects;

  /// The template for objects to process
  DomainCancelation template;

  /// The query to fetch the object instead of defined list
  Query query;

  BulkDomainCancelationPatchRequest({
    this.objects,
    this.template,
    this.query,
  });

  @override
  String toString() {
    return 'BulkDomainCancelationPatchRequest[objects=$objects, template=$template, query=$query, ]';
  }

  ///
  /// Json to Location object
  ///
  factory BulkDomainCancelationPatchRequest.fromJson(
          Map<String, dynamic> json) =>
      _$BulkDomainCancelationPatchRequestFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() =>
      _$BulkDomainCancelationPatchRequestToJson(this);
}
