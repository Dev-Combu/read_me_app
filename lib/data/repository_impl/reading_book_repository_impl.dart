import 'package:read_me_app/data/source/reading_book/reading_book_data_source.dart';
import 'package:read_me_app/domain/entity/reading_book_entity.dart';
import 'package:read_me_app/domain/repository/reading_book_repository.dart';

class ReadingBookRepositoryImpl implements ReadingBookRepository {
  ReadingBookRepositoryImpl(this._readingBookDataSource);
  final ReadingBookDataSource _readingBookDataSource;

  @override
  Future<List<ReadingBookEntity>> createBook(
      ReadingBookEntity readingBookEntity) async {
    await _readingBookDataSource.createBook(readingBookEntity);

    return [readingBookEntity];
  }

  @override
  Future<List<ReadingBookEntity>> deleteBook(String id) async {
    await _readingBookDataSource.deleteBook(id);

    return [];
  }

  @override
  Stream<List<ReadingBookEntity>> readBook() {
    final result = _readingBookDataSource.readBook();
    return result.map((list){
      return list.map((e) => ReadingBookEntity(
              id: e.id,
              author: e.author,
              bookTitle: e.bookTitle,
              title: e.title,
              image: e.image,
              detail: e.detail,
              date: e.date,
            ))
        .toList();
        
  });
  }

  @override
  Future<List<ReadingBookEntity>> updateBook(
      ReadingBookEntity readingBookEntity) async {
    await _readingBookDataSource.updateBook(readingBookEntity);

    return [readingBookEntity];
  }
}
