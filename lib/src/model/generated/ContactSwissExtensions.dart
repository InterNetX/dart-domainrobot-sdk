import 'package:json_annotation/json_annotation.dart';

part 'ContactSwissExtensions.g.dart';

@JsonSerializable()
class ContactSwissExtensions {
  /// The enterprise ID, in the specific context of .swiss based on current rules, is the Swiss UID/IDE/IDI.
  String enterpriseId;
  
/// The statement of intended use for the domain name.
  String intededUse;
  
  
  
  ContactSwissExtensions({
  	this.enterpriseId,
  	this.intededUse,
  });

  @override
  String toString() {
    return 'ContactSwissExtensions[enterpriseId=$enterpriseId, intededUse=$intededUse, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory ContactSwissExtensions.fromJson(Map<String, dynamic> json) =>
      _$ContactSwissExtensionsFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ContactSwissExtensionsToJson(this);
  
}

