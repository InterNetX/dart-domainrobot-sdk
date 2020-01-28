import 'package:json_annotation/json_annotation.dart';
import 'DomainStudioDomainStatus.dart';

part 'WhoisStatus.g.dart';

@JsonSerializable()
class WhoisStatus {
  /// The whois status
  DomainStudioDomainStatus status;
  
  
  
  WhoisStatus({
  	this.status,
  });

  @override
  String toString() {
    return 'WhoisStatus[status=$status, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory WhoisStatus.fromJson(Map<String, dynamic> json) =>
      _$WhoisStatusFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$WhoisStatusToJson(this);
  
}

