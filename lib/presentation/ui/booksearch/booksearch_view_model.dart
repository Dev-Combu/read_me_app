import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:read_me_app/domain/entity/naver_entity.dart';
import 'package:read_me_app/presentation/ui/booksearch/booksearch_provider.dart';

class BooksearchViewModel extends Notifier<AsyncValue<List<NaverEntity>>>{
  @override
  AsyncValue<List<NaverEntity>> build() {
    return AsyncData([]);
  }

  Future<void> fetchNaver(String query) async{
    state = AsyncLoading();
    try{
      final results = await ref.read(fetchNaverUsecaseProvider).execute(query);
      state = AsyncData(results!);
    } catch (e, stack){
      state = AsyncError(e, stack);
    }
  }
}

final booksearchViewModel = NotifierProvider<BooksearchViewModel, AsyncValue<List<NaverEntity>>>(
() => BooksearchViewModel(),
);