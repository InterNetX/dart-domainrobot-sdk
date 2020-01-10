import 'package:json_annotation/json_annotation.dart';
import 'Zone.dart';

part 'BulkZonePostRequest.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class BulkZonePostRequest {
  /// The objects to process
  List<Zone> objects;

  /// The template for objects to process
  Zone template;

  BulkZonePostRequest({
    this.objects,
    this.template,
  });

  @override
  String toString() {
    return 'BulkZonePostRequest[objects=$objects, template=$template, ]';
  }

  ///
  /// Json to Location object
  ///
  factory BulkZonePostRequest.fromJson(Map<String, dynamic> json) =>
      _$BulkZonePostRequestFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$BulkZonePostRequestToJson(this);
}
