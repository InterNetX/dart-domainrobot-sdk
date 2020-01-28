import 'package:json_annotation/json_annotation.dart';
import 'ItEntityTypeConstants.dart';

part 'ContactItExtensions.g.dart';

@JsonSerializable()
class ContactItExtensions {
  /// The number of the matching entity.
  ItEntityTypeConstants entityType;
  
  
  
  ContactItExtensions({
  	this.entityType,
  });

  @override
  String toString() {
    return 'ContactItExtensions[entityType=$entityType, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory ContactItExtensions.fromJson(Map<String, dynamic> json) =>
      _$ContactItExtensionsFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ContactItExtensionsToJson(this);
  
}

