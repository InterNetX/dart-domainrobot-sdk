import 'package:json_annotation/json_annotation.dart';
import 'DomainCancelation.dart';

part 'BulkDomainCancelationPostRequest.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class BulkDomainCancelationPostRequest {
  /// The objects to process
  List<DomainCancelation> objects;

  /// The template for objects to process
  DomainCancelation template;

  BulkDomainCancelationPostRequest({
    this.objects,
    this.template,
  });

  @override
  String toString() {
    return 'BulkDomainCancelationPostRequest[objects=$objects, template=$template, ]';
  }

  ///
  /// Json to Location object
  ///
  factory BulkDomainCancelationPostRequest.fromJson(
          Map<String, dynamic> json) =>
      _$BulkDomainCancelationPostRequestFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() =>
      _$BulkDomainCancelationPostRequestToJson(this);
}
