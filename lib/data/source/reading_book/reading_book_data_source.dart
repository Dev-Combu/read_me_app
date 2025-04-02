import 'package:read_me_app/data/dto/reading_book/reading_book_dto.dart';

abstract interface class ReadingBookDataSource {

 Future<List<ReadingBookDto>> createBook();
 Future<List<ReadingBookDto>> readBook();
 Future<List<ReadingBookDto>> updateBook();
 Future<List<ReadingBookDto>> delteBook();

}