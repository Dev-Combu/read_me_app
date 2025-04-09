// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reading_book_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReadingBookDto _$ReadingBookDtoFromJson(Map<String, dynamic> json) =>
    _ReadingBookDto(
      id: json['id'] as String,
      author: json['author'] as String,
      bookTitle: json['bookTitle'] as String,
      title: json['title'] as String,
      image: json['image'] as String,
      detail: json['detail'] as String,
      date: json['date'] as String,
    );

Map<String, dynamic> _$ReadingBookDtoToJson(_ReadingBookDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'author': instance.author,
      'bookTitle': instance.bookTitle,
      'title': instance.title,
      'image': instance.image,
      'detail': instance.detail,
      'date': instance.date,
    };
