import 'package:json_annotation/json_annotation.dart';
import 'DomainParkingExtensions.dart';
import 'DomainTmchClaimNoticeExtensions.dart';

part 'DomainExtensions.g.dart';

@JsonSerializable()
class DomainExtensions {
  
  DomainParkingExtensions parkingExtensions;
  

  DomainTmchClaimNoticeExtensions tmchClaimsNoticeExtensions;
  
  
  
  DomainExtensions({
  	this.parkingExtensions,
  	this.tmchClaimsNoticeExtensions,
  });

  @override
  String toString() {
    return 'DomainExtensions[parkingExtensions=$parkingExtensions, tmchClaimsNoticeExtensions=$tmchClaimsNoticeExtensions, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory DomainExtensions.fromJson(Map<String, dynamic> json) =>
      _$DomainExtensionsFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$DomainExtensionsToJson(this);
  
}

