import 'package:json_annotation/json_annotation.dart';

part 'ContactMadridExtensions.g.dart';

@JsonSerializable()
class ContactMadridExtensions {
  /// The statement of intended use for the domain name.
  String intendedUse;
  
  
  
  ContactMadridExtensions({
  	this.intendedUse,
  });

  @override
  String toString() {
    return 'ContactMadridExtensions[intendedUse=$intendedUse, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory ContactMadridExtensions.fromJson(Map<String, dynamic> json) =>
      _$ContactMadridExtensionsFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ContactMadridExtensionsToJson(this);
  
}

