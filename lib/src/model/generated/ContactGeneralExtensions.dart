import 'package:json_annotation/json_annotation.dart';
import 'ContactBirthExtensions.dart';
import 'ContactIdentificationExtensions.dart';
import 'ContactTrademarkExtensions.dart';
import 'GenderConstants.dart';

part 'ContactGeneralExtensions.g.dart';

@JsonSerializable()
class ContactGeneralExtensions {
  /// The birth extensions.
  ContactBirthExtensions birth;
  
/// The trademark extensions.
  ContactTrademarkExtensions trademark;
  
/// The identification extensions.
  ContactIdentificationExtensions identification;
  
/// The language.
  String language;
  
/// The company number.
  String companyNumber;
  
/// The gender.
  GenderConstants gender;
  
/// The vatnumber.
  String vatNumber;
  
/// The citizenship.
  String citizenship;
  
/// The mobile phonenumber.
  String mobilePhone;
  
  
  
  ContactGeneralExtensions({
  	this.birth,
  	this.trademark,
  	this.identification,
  	this.language,
  	this.companyNumber,
  	this.gender,
  	this.vatNumber,
  	this.citizenship,
  	this.mobilePhone,
  });

  @override
  String toString() {
    return 'ContactGeneralExtensions[birth=$birth, trademark=$trademark, identification=$identification, language=$language, companyNumber=$companyNumber, gender=$gender, vatNumber=$vatNumber, citizenship=$citizenship, mobilePhone=$mobilePhone, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory ContactGeneralExtensions.fromJson(Map<String, dynamic> json) =>
      _$ContactGeneralExtensionsFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ContactGeneralExtensionsToJson(this);
  
}

