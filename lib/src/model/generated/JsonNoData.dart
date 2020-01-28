import 'package:json_annotation/json_annotation.dart';

part 'JsonNoData.g.dart';

@JsonSerializable()
class JsonNoData {
    
  JsonNoData();
  

  @override
  String toString() {
    return 'JsonNoData[]';
  }
  
  ///
  /// Json to Location object
  ///
  factory JsonNoData.fromJson(Map<String, dynamic> json) =>
      _$JsonNoDataFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$JsonNoDataToJson(this);
  
}

