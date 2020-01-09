import 'package:json_annotation/json_annotation.dart';

part 'AddressClaim.g.dart';

@JsonSerializable()
class AddressClaim {
  /// Full mailing address, formatted for display or use on a mailing label. This field MAY contain multiple lines, separated by newlines. Newlines can be represented either as a carriage return/line feed pair (\"\\r\\n\") or as a single line feed character (\"\\n\")
  String formatted;
  
/// Full street address component, which MAY include house number, street name, Post Office Box, and multi-line extended street address information. This field MAY contain multiple lines, separated by newlines. Newlines can be represented either as a carriage return/line feed pair (\"\\r\\n\") or as a single line feed character (\"\\n\")
  String streetAddress;
  
/// City or locality component
  String locality;
  
/// State, province, prefecture, or region component
  String region;
  
/// Zip code or postal code component
  String postalCode;
  
/// Country name component
  String country;
  
  
  
  AddressClaim({
  	this.formatted,
  	this.streetAddress,
  	this.locality,
  	this.region,
  	this.postalCode,
  	this.country,
  });

  @override
  String toString() {
    return 'AddressClaim[formatted=$formatted, streetAddress=$streetAddress, locality=$locality, region=$region, postalCode=$postalCode, country=$country, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory AddressClaim.fromJson(Map<String, dynamic> json) =>
      _$AddressClaimFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$AddressClaimToJson(this);
  
}

