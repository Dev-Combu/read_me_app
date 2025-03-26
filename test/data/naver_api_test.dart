import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';
import 'package:read_me_app/data/source/naver_data_source_impl.dart';

void main() {
  
  test('naver api test', () async {
    NaverDataSourceImpl naverDataSourceImpl = NaverDataSourceImpl();
    final search = await naverDataSourceImpl.searchBook('신의 카르테',0);
    expect(search.isEmpty, false);
    final Logger logger = Logger();
    for(var searchs in search){
    logger.i(searchs.author);
    logger.i(searchs.description);
    }
    

  });
}