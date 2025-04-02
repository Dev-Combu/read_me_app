import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:read_me_app/data/dto/naver/naver_dto.dart';
import 'package:read_me_app/data/source/naver/naver_data_source.dart';
import 'package:dio/dio.dart';

class NaverDataSourceImpl implements NaverDataSource{

  final dio = Dio();

  @override
  Future<List<NaverDto>> searchBook(String query, int start) async{
    final response = await dio.get(
      'https://openapi.naver.com/v1/search/book.json?',
      queryParameters: {
        'query' : query,
        'display' : 10,
        'start' : start
      },
      options: Options(
        headers: {
          'X-Naver-Client-Id' : dotenv.get('NAVER_ID'),
          'X-Naver-Client-Secret' : dotenv.get('NAVER_SECRET')
        }
      )
    );
    if(response.statusCode == 200){
      final Map<String, dynamic> map = response.data;
      final results = List.from(map['items']);
      final iterable = results.map((e) {
        return NaverDto.fromJson(e);
      });
      final list = iterable.toList();
      return list;

    }
    return [];
  }
  
}