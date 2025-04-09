import 'package:freezed_annotation/freezed_annotation.dart';

part 'reading_book_dto.freezed.dart';
part 'reading_book_dto.g.dart';

@freezed
abstract class ReadingBookDto with _$ReadingBookDto {
  factory ReadingBookDto({
    required String author,
    required String bookTitle,
    required String title,
    required String image,
    required String detail,
    required String date,
  }) = _ReadingBookDto;

  factory ReadingBookDto.fromJson(Map<String, dynamic> json) => _$ReadingBookDtoFromJson(json);

}
