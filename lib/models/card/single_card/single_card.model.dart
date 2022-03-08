import 'package:json_annotation/json_annotation.dart';
import 'package:mtg_cards/models/card/card.model.dart';

part 'single_card.model.g.dart';

@JsonSerializable()
class SingleCard {
  SingleCard({required this.card});

  Card card;

  factory SingleCard.fromJson(Map<String, dynamic> json) =>
      _$SingleCardFromJson(json);

  Map<String, dynamic> toJson() => _$SingleCardToJson(this);
}
