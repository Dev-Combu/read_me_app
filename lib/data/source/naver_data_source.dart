import 'package:read_me_app/data/dto/naver/naver_dto.dart';

abstract interface class NaverDataSource {
  Future <List<NaverDto>> searchBook(String query);
}