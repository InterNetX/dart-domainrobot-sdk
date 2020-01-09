import 'package:json_annotation/json_annotation.dart';
import 'RoPersonTypeConstants.dart';

part 'ContactRoExtensions.g.dart';

@JsonSerializable()
class ContactRoExtensions {
  /// The entity person type.
  RoPersonTypeConstants personType;
  
  
  
  ContactRoExtensions({
  	this.personType,
  });

  @override
  String toString() {
    return 'ContactRoExtensions[personType=$personType, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory ContactRoExtensions.fromJson(Map<String, dynamic> json) =>
      _$ContactRoExtensionsFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ContactRoExtensionsToJson(this);
  
}

