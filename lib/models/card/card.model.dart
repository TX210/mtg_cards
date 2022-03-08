import 'package:json_annotation/json_annotation.dart';

import 'package:mtg_cards/models/card/rullings/rulings.model.dart';

import 'translations/translations.model.dart';

part 'card.model.g.dart';

@JsonSerializable()
class Card {
  Card(
      {this.name,
      this.names,
      this.manaCost,
      this.cmc,
      this.colors,
      this.colorIdentity,
      this.type,
      this.types,
      this.subtypes,
      this.rarity,
      this.set,
      this.text,
      this.artist,
      this.number,
      this.power,
      this.toughness,
      this.layout,
      this.mutliverseid,
      this.imageUrl,
      this.rulings,
      this.translations,
      this.printings,
      this.originalType,
      this.id});

  String? name;
  List<String>? names;
  String? manaCost;
  num? cmc;
  List<String>? colors;
  List<String>? colorIdentity;
  String? type;
  List<String>? types;
  List<String>? subtypes;
  String? rarity;
  String? set;
  String? text;
  String? artist;
  String? number;
  String? power;
  String? toughness;
  String? layout;
  num? mutliverseid;
  String? imageUrl;
  List<Rulings>? rulings;
  @JsonKey(name: 'foreignNames')
  List<Translations>? translations;
  List<String>? printings;
  String? originalType;
  String? id;

  factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);

  Map<String, dynamic> toJson() => _$CardToJson(this);
}
