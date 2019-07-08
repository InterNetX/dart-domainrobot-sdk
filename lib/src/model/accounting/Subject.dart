import 'package:json_annotation/json_annotation.dart';

import 'Custom.dart';

part 'Subject.g.dart';

@JsonSerializable()
class Subject {
  String name;
  String object;
  List<Custom> customs;

  Subject({this.name, this.customs, this.object});

  /*
   * Json to Location object
   */
  factory Subject.fromJson(Map<String, dynamic> json) =>
      _$SubjectFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$SubjectToJson(this);
}
