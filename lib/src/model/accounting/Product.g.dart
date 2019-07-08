// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) {
  return Product(
      created: json['created'] as String,
      updated: json['updated'] as String,
      owner: json['owner'] == null
          ? null
          : User.fromJson(json['owner'] as Map<String, dynamic>),
      updater: json['updater'] == null
          ? null
          : User.fromJson(json['updater'] as Map<String, dynamic>),
      article: json['article'] == null
          ? null
          : Article.fromJson(json['article'] as Map<String, dynamic>),
      businessCase: json['businessCase'] as String,
      priceRequired: json['priceRequired'] as bool,
      vatType: json['vatType'] == null
          ? null
          : VatType.fromJson(json['vatType'] as Map<String, dynamic>));
}

Map<String, dynamic> _$ProductToJson(Product instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('created', instance.created);
  writeNotNull('updated', instance.updated);
  writeNotNull('owner', instance.owner);
  writeNotNull('updater', instance.updater);
  writeNotNull('article', instance.article);
  writeNotNull('vatType', instance.vatType);
  writeNotNull('priceRequired', instance.priceRequired);
  writeNotNull('businessCase', instance.businessCase);
  return val;
}
