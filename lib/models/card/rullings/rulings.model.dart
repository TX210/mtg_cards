import 'package:json_annotation/json_annotation.dart';

part 'rulings.model.g.dart';

@JsonSerializable()
class Rulings {
  Rulings({this.date, this.text});

  String? date;
  String? text;

  factory Rulings.fromJson(Map<String, dynamic> json) =>
      _$RulingsFromJson(json);

  Map<String, dynamic> toJson() => _$RulingsToJson(this);
}
