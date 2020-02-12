import 'package:json_annotation/json_annotation.dart';
import 'Query.dart';
import 'Redirect.dart';

part 'BulkRedirectDeleteRequest.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class BulkRedirectDeleteRequest {
  /// The objects to process
  List<Redirect> objects;

  /// The query to fetch the object instead of defined list
  Query query;

  BulkRedirectDeleteRequest({
    this.objects,
    this.query,
  });

  @override
  String toString() {
    return 'BulkRedirectDeleteRequest[objects=$objects, query=$query, ]';
  }

  ///
  /// Json to Location object
  ///
  factory BulkRedirectDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$BulkRedirectDeleteRequestFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$BulkRedirectDeleteRequestToJson(this);
}
