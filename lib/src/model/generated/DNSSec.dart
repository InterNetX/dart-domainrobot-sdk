import 'package:json_annotation/json_annotation.dart';

part 'DNSSec.g.dart';

@JsonSerializable()
class DNSSec {
  /// The algorithm.
  int algorithm;
  
/// The flags.
  int flags;
   // range from 256 to 257//
/// The protocol.
  int protocol;
  
/// The public key.
  String publicKey;
  
  
  
  DNSSec({
  	this.algorithm,
  	this.flags,
  	this.protocol,
  	this.publicKey,
  });

  @override
  String toString() {
    return 'DNSSec[algorithm=$algorithm, flags=$flags, protocol=$protocol, publicKey=$publicKey, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory DNSSec.fromJson(Map<String, dynamic> json) =>
      _$DNSSecFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$DNSSecToJson(this);
  
}

