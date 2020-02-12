import 'package:json_annotation/json_annotation.dart';
import 'Redirect.dart';

part 'BulkRedirectPostRequest.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class BulkRedirectPostRequest {
  /// The objects to process
  List<Redirect> objects;

  /// The template for objects to process
  Redirect template;

  BulkRedirectPostRequest({
    this.objects,
    this.template,
  });

  @override
  String toString() {
    return 'BulkRedirectPostRequest[objects=$objects, template=$template, ]';
  }

  ///
  /// Json to Location object
  ///
  factory BulkRedirectPostRequest.fromJson(Map<String, dynamic> json) =>
      _$BulkRedirectPostRequestFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$BulkRedirectPostRequestToJson(this);
}
