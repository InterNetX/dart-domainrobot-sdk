import 'package:json_annotation/json_annotation.dart';

part 'NameServer.g.dart';

@JsonSerializable()
class NameServer {
  /// Host name of the nameserver.
  String name;
  
/// The time to live.
  int ttl;
  
/// The ip addresses.
  List<String> ipAddresses;
  
  
  
  NameServer({
  	this.name,
  	this.ttl,
  	this.ipAddresses,
  });

  @override
  String toString() {
    return 'NameServer[name=$name, ttl=$ttl, ipAddresses=$ipAddresses, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory NameServer.fromJson(Map<String, dynamic> json) =>
      _$NameServerFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$NameServerToJson(this);
  
}

