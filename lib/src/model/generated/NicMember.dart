import 'package:json_annotation/json_annotation.dart';

part 'NicMember.g.dart';

@JsonSerializable()
class NicMember {
  /// The label
  String label;
  
/// The name
  String name;
  
  
  
  NicMember({
  	this.label,
  	this.name,
  });

  @override
  String toString() {
    return 'NicMember[label=$label, name=$name, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory NicMember.fromJson(Map<String, dynamic> json) =>
      _$NicMemberFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$NicMemberToJson(this);
  
}

