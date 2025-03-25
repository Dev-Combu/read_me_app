import 'package:read_me_app/domain/entity/naver_entity.dart';

abstract interface class NaverRepository {
  Future<List<NaverEntity>?> searchBook(String query);
}