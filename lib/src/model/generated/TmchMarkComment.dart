import 'package:json_annotation/json_annotation.dart';
import 'BasicUser.dart';
import 'TmchMarkStatusConstants.dart';

part 'TmchMarkComment.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class TmchMarkComment {
  /// The created date.
  DateTime created;

  /// The updated date.
  DateTime updated;

  TmchMarkStatusConstants status;

  String comment;

  BasicUser user;

  TmchMarkComment({
    this.created,
    this.updated,
    this.status,
    this.comment,
    this.user,
  });

  @override
  String toString() {
    return 'TmchMarkComment[created=$created, updated=$updated, status=$status, comment=$comment, user=$user, ]';
  }

  ///
  /// Json to Location object
  ///
  factory TmchMarkComment.fromJson(Map<String, dynamic> json) =>
      _$TmchMarkCommentFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$TmchMarkCommentToJson(this);
}
