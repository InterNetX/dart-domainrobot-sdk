import 'package:json_annotation/json_annotation.dart';
import 'BasicDocument.dart';
import 'BasicUser.dart';
import 'CryptoFormatConstants.dart';
import 'ProtocolTypeConstants.dart';

part 'OTPAuth.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class OTPAuth {
  /// The created date.
  DateTime created;

  /// The updated date.
  DateTime updated;

  /// The owner of the object.
  BasicUser owner;

  /// The updating user of the object.
  BasicUser updater;

  /// The type of protocol
  ProtocolTypeConstants protocolType;

  /// Crypto algorithm
  CryptoFormatConstants algorithm;

  /// Timeout in seconds
  int timeout;
  // range from 5 to 90//
  /// The length of the token
  int digits;

  /// Base32 encoded shared secret.
  String secret;

  /// The generated support 'tokens'.
  List<String> tokens;

  /// The generated qr code png.
  BasicDocument qrCode;

  OTPAuth({
    this.created,
    this.updated,
    this.owner,
    this.updater,
    this.protocolType,
    this.algorithm,
    this.timeout,
    this.digits,
    this.secret,
    this.tokens,
    this.qrCode,
  });

  @override
  String toString() {
    return 'OTPAuth[created=$created, updated=$updated, owner=$owner, updater=$updater, protocolType=$protocolType, algorithm=$algorithm, timeout=$timeout, digits=$digits, secret=$secret, tokens=$tokens, qrCode=$qrCode, ]';
  }

  ///
  /// Json to Location object
  ///
  factory OTPAuth.fromJson(Map<String, dynamic> json) =>
      _$OTPAuthFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$OTPAuthToJson(this);
}
