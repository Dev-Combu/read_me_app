import 'package:read_me_app/data/source/naver_data_source.dart';
import 'package:read_me_app/domain/entity/naver_entity.dart';
import 'package:read_me_app/domain/repository/naver_repository.dart';

class NaverRepositoryImpl implements NaverRepository{
  NaverRepositoryImpl(this._naverDataSource);
  final NaverDataSource _naverDataSource;


  @override
  Future<List<NaverEntity>?> searchBook(String query) async{
    final result = await _naverDataSource.searchBook(query);
    return result
      .map(
        (e) => NaverEntity(
            title: e.title,
            link: e.link,
            author: e.author,
            discount: e.discount,
            publisher: e.publisher,
            pubdate: e.pubdate,
            isbn: e.isbn,
            description: e.description)
      ).toList();
  }
}