import 'package:json_annotation/json_annotation.dart';

part 'ModelVoid.g.dart';

@JsonSerializable()
class ModelVoid {
    
  ModelVoid();
  

  @override
  String toString() {
    return 'ModelVoid[]';
  }
  
  ///
  /// Json to Location object
  ///
  factory ModelVoid.fromJson(Map<String, dynamic> json) =>
      _$ModelVoidFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ModelVoidToJson(this);
  
}

