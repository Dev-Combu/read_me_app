import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';
import 'package:read_me_app/data/source/naver/naver_data_source_impl.dart';

void main() {
  
  test('naver api test', () async {
    await dotenv.load(fileName: ".env");
    NaverDataSourceImpl naverDataSourceImpl = NaverDataSourceImpl();
    final search = await naverDataSourceImpl.searchBook('신의 카르테',1);
    expect(search.isEmpty, false);
    final Logger logger = Logger();
    for(var searchs in search){
    logger.i(searchs.author);
    logger.i(searchs.image);
    }
    

  });
}