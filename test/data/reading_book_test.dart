import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';
import 'package:read_me_app/data/source/reading_book/reading_book_data_source_impl.dart';
import 'package:read_me_app/firebase_options.dart';

void main() {

  setUpAll(() async {
    WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  });

  test('reading_book_test', ()  {
    ReadingBookDataSourceImpl readingBookDataSourceImpl = ReadingBookDataSourceImpl();
    final search =  readingBookDataSourceImpl.readBook();
    expect(search.isEmpty, false);
  });
}
