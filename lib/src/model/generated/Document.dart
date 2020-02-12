import 'package:json_annotation/json_annotation.dart';

part 'Document.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class Document {
  /// The created date.
  DateTime created;

  /// The updated date.
  DateTime updated;

  int id;

  String comment;

  String type;

  String mimeType;

  String data;

  int size;

  String name;

  String link;

  Document({
    this.created,
    this.updated,
    this.id,
    this.comment,
    this.type,
    this.mimeType,
    this.data,
    this.size,
    this.name,
    this.link,
  });

  @override
  String toString() {
    return 'Document[created=$created, updated=$updated, id=$id, comment=$comment, type=$type, mimeType=$mimeType, data=$data, size=$size, name=$name, link=$link, ]';
  }

  ///
  /// Json to Location object
  ///
  factory Document.fromJson(Map<String, dynamic> json) =>
      _$DocumentFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$DocumentToJson(this);
}
