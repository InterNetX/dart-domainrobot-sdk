import 'package:json_annotation/json_annotation.dart';
import 'DomainPrereg.dart';

part 'BulkDomainPreregPostRequest.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class BulkDomainPreregPostRequest {
  /// The objects to process
  List<DomainPrereg> objects;

  /// The template for objects to process
  DomainPrereg template;

  BulkDomainPreregPostRequest({
    this.objects,
    this.template,
  });

  @override
  String toString() {
    return 'BulkDomainPreregPostRequest[objects=$objects, template=$template, ]';
  }

  ///
  /// Json to Location object
  ///
  factory BulkDomainPreregPostRequest.fromJson(Map<String, dynamic> json) =>
      _$BulkDomainPreregPostRequestFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$BulkDomainPreregPostRequestToJson(this);
}
