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

  void fetchBookCase() {
    final stream = ref.read(fetchReadingBookUsecaseProvider).readexecute();

    final streamSubscription = stream.listen((e) {
      state = e;
    });
    ref.onDispose(() {
      streamSubscription.cancel();
    });
  }
}

final bookcaseViewModel = NotifierProvider<BookcaseViewModel, List<ReadingBookEntity>?>(
    () => BookcaseViewModel());