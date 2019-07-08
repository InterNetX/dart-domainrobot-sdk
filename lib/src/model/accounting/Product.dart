import 'package:json_annotation/json_annotation.dart';

import '../User.dart';
import 'Article.dart';
import 'VatType.dart';

part 'Product.g.dart';

@JsonSerializable(includeIfNull: false)
class Product {
  String created;
  String updated;
  User owner;
  User updater;
  Article article;
  VatType vatType;
  bool priceRequired;
  String businessCase;

  Product(
      {this.created,
      this.updated,
      this.owner,
      this.updater,
      this.article,
      this.businessCase,
      this.priceRequired,
      this.vatType});

  /*
   * Json to Location object
   */
  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
