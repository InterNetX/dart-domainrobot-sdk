import 'package:json_annotation/json_annotation.dart';

part 'ContactBirthExtensions.g.dart';

@JsonSerializable()
class ContactBirthExtensions {
  /// The country.
  String country;
  
/// The day.
  DateTime day;
  
/// The postalCode.
  String postalCode;
  
/// The place.
  String place;
  
  
  
  ContactBirthExtensions({
  	this.country,
  	this.day,
  	this.postalCode,
  	this.place,
  });

  @override
  String toString() {
    return 'ContactBirthExtensions[country=$country, day=$day, postalCode=$postalCode, place=$place, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory ContactBirthExtensions.fromJson(Map<String, dynamic> json) =>
      _$ContactBirthExtensionsFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ContactBirthExtensionsToJson(this);
  
}

