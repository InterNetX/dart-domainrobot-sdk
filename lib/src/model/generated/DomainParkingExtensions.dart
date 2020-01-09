import 'package:json_annotation/json_annotation.dart';

part 'DomainParkingExtensions.g.dart';

@JsonSerializable()
class DomainParkingExtensions {
  /// Lorem Ipsum
  String parkingCategory;
  
/// The currency of the sale
  String currency;
  
/// The parking
  String domainLanguage;
  
/// Should the domain be listed for sale
  bool forSale;
  
/// The keywords to use
  String keyword;
  
/// The price to use
  double price;
  
/// Is the price fix
  bool fixedPrice;
  
/// The minimum of price
  double minPrice;
  
  
  
  DomainParkingExtensions({
  	this.parkingCategory,
  	this.currency,
  	this.domainLanguage,
  	this.forSale,
  	this.keyword,
  	this.price,
  	this.fixedPrice,
  	this.minPrice,
  });

  @override
  String toString() {
    return 'DomainParkingExtensions[parkingCategory=$parkingCategory, currency=$currency, domainLanguage=$domainLanguage, forSale=$forSale, keyword=$keyword, price=$price, fixedPrice=$fixedPrice, minPrice=$minPrice, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory DomainParkingExtensions.fromJson(Map<String, dynamic> json) =>
      _$DomainParkingExtensionsFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$DomainParkingExtensionsToJson(this);
  
}

