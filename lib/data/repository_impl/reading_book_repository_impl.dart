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
  Future<List<ReadingBookEntity>> delteBook() {
    // TODO: implement delteBook
    throw UnimplementedError();
  }

  @override
  Future<List<ReadingBookEntity>> readBook() async {
    final result = await _readingBookDataSource.readBook();
    return result
        .map((e) => ReadingBookEntity(
              author: e.author,
              title: e.title,
              image: e.image,
              detail: e.detail,
              date: e.date,
            ))
        .toList();
  }

  @override
  Future<List<ReadingBookEntity>> updateBook() {
    // TODO: implement updateBook
    throw UnimplementedError();
  }
}
