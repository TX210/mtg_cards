// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_info.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardInfo _$CardInfoFromJson(Map<String, dynamic> json) => CardInfo(
      name: json['name'] as String?,
      names:
          (json['names'] as List<dynamic>?)?.map((e) => e as String).toList(),
      manaCost: json['manaCost'] as String?,
      cmc: json['cmc'] as num?,
      colors:
          (json['colors'] as List<dynamic>?)?.map((e) => e as String).toList(),
      colorIdentity: (json['colorIdentity'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      type: json['type'] as String?,
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
      subtypes: (json['subtypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      rarity: json['rarity'] as String?,
      set: json['set'] as String?,
      text: json['text'] as String?,
      artist: json['artist'] as String?,
      number: json['number'] as String?,
      power: json['power'] as String?,
      toughness: json['toughness'] as String?,
      layout: json['layout'] as String?,
      mutliverseid: json['mutliverseid'] as num?,
      imageUrl: json['imageUrl'] as String?,
      rulings: (json['rulings'] as List<dynamic>?)
          ?.map((e) => Rulings.fromJson(e as Map<String, dynamic>))
          .toList(),
      translations: (json['foreignNames'] as List<dynamic>?)
          ?.map((e) => Translations.fromJson(e as Map<String, dynamic>))
          .toList(),
      printings: (json['printings'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      originalType: json['originalType'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$CardInfoToJson(CardInfo instance) => <String, dynamic>{
      'name': instance.name,
      'names': instance.names,
      'manaCost': instance.manaCost,
      'cmc': instance.cmc,
      'colors': instance.colors,
      'colorIdentity': instance.colorIdentity,
      'type': instance.type,
      'types': instance.types,
      'subtypes': instance.subtypes,
      'rarity': instance.rarity,
      'set': instance.set,
      'text': instance.text,
      'artist': instance.artist,
      'number': instance.number,
      'power': instance.power,
      'toughness': instance.toughness,
      'layout': instance.layout,
      'mutliverseid': instance.mutliverseid,
      'imageUrl': instance.imageUrl,
      'rulings': instance.rulings,
      'foreignNames': instance.translations,
      'printings': instance.printings,
      'originalType': instance.originalType,
      'id': instance.id,
    };
