import 'package:freezed_annotation/freezed_annotation.dart';

part 'naver_dto.freezed.dart';
part 'naver_dto.g.dart';

@freezed
abstract class NaverDto with _$NaverDto {
  factory NaverDto({
    required String title,
    required String link,
    required String author,
    required String discount,
    required String publisher,
    required String pubdate,
    required String isbn,
    required String description,
  }) = _NaverDto;
  
  factory NaverDto.fromJson(Map<String, dynamic> json) => _$NaverDtoFromJson(json);

}