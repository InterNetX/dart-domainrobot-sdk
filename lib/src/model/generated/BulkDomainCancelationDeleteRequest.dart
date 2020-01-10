import 'package:json_annotation/json_annotation.dart';
import 'DomainCancelation.dart';
import 'Query.dart';

part 'BulkDomainCancelationDeleteRequest.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class BulkDomainCancelationDeleteRequest {
  /// The objects to process
  List<DomainCancelation> objects;

  /// The query to fetch the object instead of defined list
  Query query;

  BulkDomainCancelationDeleteRequest({
    this.objects,
    this.query,
  });

  @override
  String toString() {
    return 'BulkDomainCancelationDeleteRequest[objects=$objects, query=$query, ]';
  }

  ///
  /// Json to Location object
  ///
  factory BulkDomainCancelationDeleteRequest.fromJson(
          Map<String, dynamic> json) =>
      _$BulkDomainCancelationDeleteRequestFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() =>
      _$BulkDomainCancelationDeleteRequestToJson(this);
}
