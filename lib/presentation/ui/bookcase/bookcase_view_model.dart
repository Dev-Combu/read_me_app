import 'dart:core';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:read_me_app/domain/entity/reading_book_entity.dart';
import 'package:read_me_app/presentation/ui/bookcase/bookcase_provider.dart';

class BookcaseViewModel extends Notifier<List<ReadingBookEntity>?>{
  @override
  List<ReadingBookEntity> build() {
    fetchBookCase();
    return [];
  }

  Future<void> fetchBookCase() async{
    state = await ref.read(fetchReadingBookUsecaseProvider).readexecute();
  }
}

final bookcaseViewModel = NotifierProvider<BookcaseViewModel, List<ReadingBookEntity>?>(
    () => BookcaseViewModel());