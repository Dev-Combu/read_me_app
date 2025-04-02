import 'package:logger/logger.dart';
import 'package:read_me_app/data/dto/reading_book/reading_book_dto.dart';
import 'package:read_me_app/data/source/reading_book/reading_book_data_source.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ReadingBookDataSourceImpl implements ReadingBookDataSource{
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final Logger logger = Logger();
  
  @override
  Future<List<ReadingBookDto>> createBook() {
    // TODO: implement createBook
    throw UnimplementedError();
  }
  
  @override
  Future<List<ReadingBookDto>> delteBook() {
    // TODO: implement delteBook
    throw UnimplementedError();
  }
  
  @override
  Future<List<ReadingBookDto>> readBook() async{
    try {
      final collectionRef = _firestore.collection('reading_book');
      final result = await collectionRef.get();

      final docs = result.docs;
      return docs.map((doc) {
        final map = doc.data();
        doc.id;
        final newMap = {
          'id': doc.id,
          ...map,
        };
        return ReadingBookDto.fromJson(newMap);
      }).toList();
    } catch (e) {
      logger.i('$e');
      return [];
    }
  }
  
  @override
  Future<List<ReadingBookDto>> updateBook() {
    // TODO: implement updateBook
    throw UnimplementedError();
  }




}