import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:read_me_app/domain/entity/naver_entity.dart';
import 'package:read_me_app/presentation/ui/booksearch/booksearch_provider.dart';

class BooksearchViewModel extends Notifier<AsyncValue<List<NaverEntity>>> {
  @override
  AsyncValue<List<NaverEntity>> build() {
    return AsyncData([]);
  }

  Future<void> fetchNaver(String query, int start, {bool append = false}) async {
    try {
      final results = await ref.read(fetchNaverUsecaseProvider).execute(query, start);

      // 기존 데이터 유지 + 새로운 데이터 추가
      if (append) {
        state = AsyncData([...?state.value, ...results!]);
      } else {
        state = AsyncData(results!); // 첫 검색 시 초기화
      }
    } catch (e, stack) {
      state = AsyncError(e, stack);
    }
  }
}

final booksearchViewModel = NotifierProvider<BooksearchViewModel, AsyncValue<List<NaverEntity>>>(
() => BooksearchViewModel(),
);