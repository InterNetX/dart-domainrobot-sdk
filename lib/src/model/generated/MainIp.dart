import 'package:json_annotation/json_annotation.dart';

part 'MainIp.g.dart';

@JsonSerializable()
class MainIp {
  
  String address;
  
/// The ttl of main address to use
  int ttl;
  
  
  
  MainIp({
  	this.address,
  	this.ttl,
  });

  @override
  String toString() {
    return 'MainIp[address=$address, ttl=$ttl, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory MainIp.fromJson(Map<String, dynamic> json) =>
      _$MainIpFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$MainIpToJson(this);
  
}

