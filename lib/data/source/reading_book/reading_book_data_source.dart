import 'package:read_me_app/data/dto/reading_book/reading_book_dto.dart';
import 'package:read_me_app/domain/entity/reading_book_entity.dart';

abstract interface class ReadingBookDataSource {

 Future<List<ReadingBookEntity>> createBook(ReadingBookEntity readingBookEntity);
 Future<List<ReadingBookDto>> readBook();
 Future<List<ReadingBookDto>> updateBook();
 Future<List<ReadingBookDto>> delteBook();

}