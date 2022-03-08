// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translations.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Translations _$TranslationsFromJson(Map<String, dynamic> json) => Translations(
      name: json['name'] as String?,
      language: json['language'] as String?,
      multiverseid: json['multiverseid'] as num?,
    );

Map<String, dynamic> _$TranslationsToJson(Translations instance) =>
    <String, dynamic>{
      'name': instance.name,
      'language': instance.language,
      'multiverseid': instance.multiverseid,
    };
