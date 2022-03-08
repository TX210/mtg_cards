import 'package:json_annotation/json_annotation.dart';

part 'translations.model.g.dart';

@JsonSerializable()
class Translations {
  Translations({this.name, this.language, this.multiverseid});

  String? name;
  String? language;
  num? multiverseid;

  factory Translations.fromJson(Map<String, dynamic> json) =>
      _$TranslationsFromJson(json);

  Map<String, dynamic> toJson() => _$TranslationsToJson(this);
}
