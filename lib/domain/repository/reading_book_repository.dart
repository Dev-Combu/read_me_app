import 'package:read_me_app/domain/entity/reading_book_entity.dart';

abstract interface class ReadingBookRepository {
  Future<List<ReadingBookEntity>> createBook(ReadingBookEntity readingBookEntity);
  Stream<List<ReadingBookEntity>> readBook();
  Future<List<ReadingBookEntity>> updateBook(ReadingBookEntity readingBookEntity);
  Future<List<ReadingBookEntity>> deleteBook(String id);
}
