import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:mtg_cards/models/card/single_card/single_card.model.dart';

class ApiClient {
  final Dio _dio = Dio();
  final String _baseUrl = 'https://api.magicthegathering.io/v1/';

  ApiClient._internal();

  static final _singleton = ApiClient._internal();

  factory ApiClient() => _singleton;

  Future<SingleCard> getCard() async {
    Response cardData = await _dio.get(
      _baseUrl + 'cards/386616',
    );
    print(cardData.data);
    SingleCard card = SingleCard.fromJson(cardData.data);
    print(card);
    return card;
  }
}
