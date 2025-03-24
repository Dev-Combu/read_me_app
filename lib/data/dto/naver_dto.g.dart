// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'naver_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NaverDto _$NaverDtoFromJson(Map<String, dynamic> json) => _NaverDto(
      title: json['title'] as String,
      link: json['link'] as String,
      author: json['author'] as String,
      discount: json['discount'] as String,
      publisher: json['publisher'] as String,
      pubdate: json['pubdate'] as String,
      isbn: json['isbn'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$NaverDtoToJson(_NaverDto instance) => <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'author': instance.author,
      'discount': instance.discount,
      'publisher': instance.publisher,
      'pubdate': instance.pubdate,
      'isbn': instance.isbn,
      'description': instance.description,
    };
