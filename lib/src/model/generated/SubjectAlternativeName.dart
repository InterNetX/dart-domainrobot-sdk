import 'package:json_annotation/json_annotation.dart';

part 'SubjectAlternativeName.g.dart';

@JsonSerializable()
class SubjectAlternativeName {
  /// The name of the san.
  String name;
  
/// The approver email of the san.
  String approverEmail;
  
/// The order id of the san.
  String orderId;
  
  
  
  SubjectAlternativeName({
  	this.name,
  	this.approverEmail,
  	this.orderId,
  });

  @override
  String toString() {
    return 'SubjectAlternativeName[name=$name, approverEmail=$approverEmail, orderId=$orderId, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory SubjectAlternativeName.fromJson(Map<String, dynamic> json) =>
      _$SubjectAlternativeNameFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$SubjectAlternativeNameToJson(this);
  
}

