import 'package:dio/dio.dart';
import 'package:mtg_cards/api/client.dart';
import 'package:mtg_cards/models/card/card_info.model.dart';
import 'package:mtg_cards/models/card/list_cards/list_cards.model.dart';
import 'package:mtg_cards/models/card/single_card/single_card.model.dart';

class CardsService {
  static CardsService? _instance;

  factory CardsService() => _instance ??= CardsService._();

  CardsService._();

  Future<CardInfo> getCard(int id) async {
    Response cardData = await ApiClient().dio.get(
          'cards/$id',
        );
    CardInfo card = SingleCard.fromJson(cardData.data).card;
    return card;
  }

  Future<List<CardInfo>> findByName(String name) async {
    Response cardData = await ApiClient().dio.get(
          'cards?name=$name',
        );
    ListCards cardList = ListCards.fromJson(cardData.data);
    return cardList.cards;
  }
}
