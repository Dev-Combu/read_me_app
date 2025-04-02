import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:read_me_app/data/repository_impl/reading_book_repository_impl.dart';
import 'package:read_me_app/data/source/reading_book/reading_book_data_source.dart';
import 'package:read_me_app/data/source/reading_book/reading_book_data_source_impl.dart';
import 'package:read_me_app/domain/repository/reading_book_repository.dart';
import 'package:read_me_app/domain/usecase/reading_book_usecase.dart';

final readingBookDataSourceProvider = Provider<ReadingBookDataSource>((ref) {
  return ReadingBookDataSourceImpl();
});

final readingBookRepositoryProvider = Provider<ReadingBookRepository>((ref){
  final datasoure = ref.read(readingBookDataSourceProvider);
  return ReadingBookRepositoryImpl(datasoure);
});

final fetchReadingBookUsecaseProvider = Provider((ref) {
  final readingBookRepo = ref.read(readingBookRepositoryProvider);
  return ReadingBookUsecase(readingBookRepo);
});