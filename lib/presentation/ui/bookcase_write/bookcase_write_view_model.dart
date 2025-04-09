import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:read_me_app/domain/entity/reading_book_entity.dart';
import 'package:read_me_app/presentation/ui/bookcase/bookcase_provider.dart';

class BookcaseViewModel extends Notifier<List<ReadingBookEntity>?> {
  @override
  List<ReadingBookEntity>? build() {
    return [];
  }


  Future<void> createBook(ReadingBookEntity book) async {
    // 책 생성 로직
    await ref.read(fetchReadingBookUsecaseProvider).createBook(book);
  }

    Future<void> updateBook(ReadingBookEntity book) async {
    // 책 생성 로직
    await ref.read(fetchReadingBookUsecaseProvider).updateBook(book);
  }
}

// NotifierProvider 생성
final bookcaseWriteViewModelProvider = NotifierProvider<BookcaseViewModel, List<ReadingBookEntity>?>(
  () => BookcaseViewModel(),
);
