import 'package:json_annotation/json_annotation.dart';

part 'ContactLuxeExtensions.g.dart';

@JsonSerializable()
class ContactLuxeExtensions {
  /// The .luxe wallet address
  String walletAddress;
  
  
  
  ContactLuxeExtensions({
  	this.walletAddress,
  });

  @override
  String toString() {
    return 'ContactLuxeExtensions[walletAddress=$walletAddress, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory ContactLuxeExtensions.fromJson(Map<String, dynamic> json) =>
      _$ContactLuxeExtensionsFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ContactLuxeExtensionsToJson(this);
  
}

