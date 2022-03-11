// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_cards.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListCards _$ListCardsFromJson(Map<String, dynamic> json) => ListCards(
      cards: (json['cards'] as List<dynamic>)
          .map((e) => CardInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListCardsToJson(ListCards instance) => <String, dynamic>{
      'cards': instance.cards,
    };
