import 'package:logger/logger.dart';
import 'package:read_me_app/data/dto/reading_book/reading_book_dto.dart';
import 'package:read_me_app/data/source/reading_book/reading_book_data_source.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:read_me_app/domain/entity/reading_book_entity.dart';

class ReadingBookDataSourceImpl implements ReadingBookDataSource {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final Logger logger = Logger();

  @override
  Future<List<ReadingBookEntity>> createBook(
      ReadingBookEntity readingBookEntity) async {
    try {
      final docRef = _firestore.collection('reading_book').doc();
      await docRef.set({
        'id': docRef.id, // Firestore 문서 ID 저장
        'image': readingBookEntity.image,
        'author': readingBookEntity.author,
        'title': readingBookEntity.title,
        'detail': readingBookEntity.detail,
        'date': readingBookEntity.date, // ✅ 기존: '' → 수정: 실제 date 값 저장
      });

      logger.i("✅ Firestore 저장 완료: ${docRef.id}");
      return [readingBookEntity];
    } catch (e) {
      logger.e("❌ Firestore 저장 실패: $e");
      return [];
    }
  }

  @override
  Future<List<ReadingBookDto>> delteBook() {
    // TODO: implement delteBook
    throw UnimplementedError();
  }

  @override
  Stream<List<ReadingBookDto>> readBook() {
    final collectionRef = _firestore.collection('reading_book');
    final result = collectionRef.snapshots();

    final stream = result.map((snapshot) {
      final docs = snapshot.docs.map((doc) {
        final map = doc.data();
        final newMap = {
          'id': doc.id,
          ...map,
        };
        return ReadingBookDto.fromJson(newMap);
      }).toList();
      return docs;
    });
    return stream;
  }

  @override
  Future<List<ReadingBookDto>> updateBook() {
    // TODO: implement updateBook
    throw UnimplementedError();
  }
}
