import 'package:json_annotation/json_annotation.dart';

part 'DNSSecJob.g.dart';

@JsonSerializable()
class DNSSecJob {
    
  DNSSecJob();
  

  @override
  String toString() {
    return 'DNSSecJob[]';
  }
  
  ///
  /// Json to Location object
  ///
  factory DNSSecJob.fromJson(Map<String, dynamic> json) =>
      _$DNSSecJobFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$DNSSecJobToJson(this);
  
}

