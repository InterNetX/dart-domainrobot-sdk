import 'package:json_annotation/json_annotation.dart';
import 'Modifier.dart';
import 'Query.dart';
import 'ZoneBasePatchRequest.dart';

part 'BulkZonePatchRequest.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class BulkZonePatchRequest {
  /// The objects to process
  List<ZoneBasePatchRequest> objects;

  /// The template for objects to process
  ZoneBasePatchRequest template;

  /// The query to fetch the object instead of defined list
  Query query;

  /// The modifer to apply on the objects
  List<Modifier> modifiers;

  BulkZonePatchRequest({
    this.objects,
    this.template,
    this.query,
    this.modifiers,
  });

  @override
  String toString() {
    return 'BulkZonePatchRequest[objects=$objects, template=$template, query=$query, modifiers=$modifiers, ]';
  }

  ///
  /// Json to Location object
  ///
  factory BulkZonePatchRequest.fromJson(Map<String, dynamic> json) =>
      _$BulkZonePatchRequestFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$BulkZonePatchRequestToJson(this);
}
