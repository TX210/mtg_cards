import 'package:json_annotation/json_annotation.dart';
import 'package:mtg_cards/models/card/card_info.model.dart';

part 'list_cards.model.g.dart';

@JsonSerializable()
class ListCards {
  ListCards({required this.cards});

  List<CardInfo> cards;

  factory ListCards.fromJson(Map<String, dynamic> json) =>
      _$ListCardsFromJson(json);

  Map<String, dynamic> toJson() => _$ListCardsToJson(this);
}
