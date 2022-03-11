import 'package:json_annotation/json_annotation.dart';

import 'package:mtg_cards/models/card/rullings/rulings.model.dart';

import 'translations/translations.model.dart';

part 'card_info.model.g.dart';

@JsonSerializable()
class CardInfo {
  CardInfo(
      {required this.name,
      this.names,
      required this.manaCost,
      this.cmc,
      required this.colors,
      this.colorIdentity,
      required this.type,
      this.types,
      this.subtypes,
      required this.rarity,
      this.set,
      required this.text,
      this.artist,
      required this.number,
      required this.power,
      this.toughness,
      this.layout,
      this.mutliverseid,
      required this.imageUrl,
      this.rulings,
      this.translations,
      this.printings,
      this.originalType,
      required this.id});

  String name;
  List<String>? names;
  String manaCost;
  num? cmc;
  List<String> colors;
  List<String>? colorIdentity;
  String type;
  List<String>? types;
  List<String>? subtypes;
  String rarity;
  String? set;
  String text;
  String? artist;
  String number;
  String power;
  String? toughness;
  String? layout;
  num? mutliverseid;
  String imageUrl;
  List<Rulings>? rulings;
  @JsonKey(name: 'foreignNames')
  List<Translations>? translations;
  List<String>? printings;
  String? originalType;
  String id;

  factory CardInfo.fromJson(Map<String, dynamic> json) =>
      _$CardInfoFromJson(json);

  Map<String, dynamic> toJson() => _$CardInfoToJson(this);
}
