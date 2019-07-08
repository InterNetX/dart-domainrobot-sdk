import 'package:json_annotation/json_annotation.dart';

import '../User.dart';

part 'Article.g.dart';

@JsonSerializable(includeIfNull: false)
class Article {
  String created;
  String updated;
  User owner;
  User updater;
  String label;
  String type;

  Article(
      {this.created,
      this.updated,
      this.owner,
      this.updater,
      this.label,
      this.type});

  /*
   * Json to Location object
   */
  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}
