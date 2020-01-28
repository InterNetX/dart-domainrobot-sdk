import 'package:json_annotation/json_annotation.dart';
import 'UkTypeConstants.dart';

part 'ContactUkExtensions.g.dart';

@JsonSerializable()
class ContactUkExtensions {
  /// The entity type.
  UkTypeConstants entityType;
  
  
  
  ContactUkExtensions({
  	this.entityType,
  });

  @override
  String toString() {
    return 'ContactUkExtensions[entityType=$entityType, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory ContactUkExtensions.fromJson(Map<String, dynamic> json) =>
      _$ContactUkExtensionsFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ContactUkExtensionsToJson(this);
  
}

