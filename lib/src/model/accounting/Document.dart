import 'package:json_annotation/json_annotation.dart';

part 'Document.g.dart';

@JsonSerializable(includeIfNull: false)
class Document {
  String created;
  String updated;
  int id;
  String type;
  String comment;
  String mimeType;
  String data;
  int size;
  String name;

  Document(
      {this.created,
      this.updated,
      this.name,
      this.data,
      this.id,
      this.mimeType,
      this.type,
      this.comment,
      this.size});

  /*
   * Json to Location object
   */
  factory Document.fromJson(Map<String, dynamic> json) =>
      _$DocumentFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$DocumentToJson(this);
}
