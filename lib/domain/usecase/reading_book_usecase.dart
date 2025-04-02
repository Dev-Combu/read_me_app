import 'package:read_me_app/domain/entity/reading_book_entity.dart';
import 'package:read_me_app/domain/repository/reading_book_repository.dart';

class ReadingBookUsecase {
  ReadingBookUsecase(this._readingBookRepository);
  final ReadingBookRepository _readingBookRepository;

  Future<List<ReadingBookEntity>?> readexecute() async {
    return await _readingBookRepository.readBook();
  }
}
