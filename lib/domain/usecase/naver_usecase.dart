import 'package:read_me_app/domain/entity/naver_entity.dart';
import 'package:read_me_app/domain/repository/naver_repository.dart';

class NaverUsecase {
  NaverUsecase(this._naverRepository);
  final NaverRepository _naverRepository;

   Future<List<NaverEntity>?> execute(String query, int start) async{
    return await _naverRepository.searchBook(query, start);
  }
}