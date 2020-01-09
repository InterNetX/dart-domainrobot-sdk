import 'package:json_annotation/json_annotation.dart';
import 'BusinessCategory.dart';

part 'ExtendedValidationExtension.g.dart';

@JsonSerializable()
class ExtendedValidationExtension {
  /// Country of judicial formation
  String joiCountryName;
  
/// The company number
  String companyNumber;
  
/// Additional validation data required for certain Comodo products.
  BusinessCategory businessCategory;
  
  
  
  ExtendedValidationExtension({
  	this.joiCountryName,
  	this.companyNumber,
  	this.businessCategory,
  });

  @override
  String toString() {
    return 'ExtendedValidationExtension[joiCountryName=$joiCountryName, companyNumber=$companyNumber, businessCategory=$businessCategory, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory ExtendedValidationExtension.fromJson(Map<String, dynamic> json) =>
      _$ExtendedValidationExtensionFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ExtendedValidationExtensionToJson(this);
  
}

