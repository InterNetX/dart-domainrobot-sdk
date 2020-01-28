import 'package:json_annotation/json_annotation.dart';

part 'Soa.g.dart';

@JsonSerializable()
class Soa {
  /// The seconds after the secondary should refresh the zone data
  int refresh;
  
/// The seconds after the secondary should retry the zone data after the refresh has been timeouts
  int retry;
  
/// The seconds after the zone data will not be delievered, if the zone could not be reached on the master.
  int expire;
  

  int ttl;
  
/// The email address of the responsible of the zone
  String email;
  
  
  
  Soa({
  	this.refresh,
  	this.retry,
  	this.expire,
  	this.ttl,
  	this.email,
  });

  @override
  String toString() {
    return 'Soa[refresh=$refresh, retry=$retry, expire=$expire, ttl=$ttl, email=$email, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory Soa.fromJson(Map<String, dynamic> json) =>
      _$SoaFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$SoaToJson(this);
  
}

