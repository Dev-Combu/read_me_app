import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:read_me_app/domain/entity/reading_book_entity.dart';
import 'package:read_me_app/presentation/ui/bookcase_write/bookcase_write_view_model.dart';

class BookcaseWritePage extends ConsumerStatefulWidget {
  const BookcaseWritePage({
    super.key,
    required this.image,
    required this.author,
    required this.title,
    required this.pubdate,
  });

  final String image;
  final String author;
  final String title;
  final String pubdate;

  @override
  ConsumerState<BookcaseWritePage> createState() => _BookcaseWritePageState();
}

class _BookcaseWritePageState extends ConsumerState<BookcaseWritePage> {
  final TextEditingController _textEditingControllerTitle = TextEditingController();
  final TextEditingController _textEditingControllerDetail = TextEditingController();

  Future<void> _saveBook() async {
    final book = ReadingBookEntity(
      image: widget.image,
      author: widget.author,
      bookTitle: widget.title,
      title: _textEditingControllerTitle.text,
      detail: _textEditingControllerDetail.text, // 사용자가 입력한 데이터 저장
      date: DateTime.now().toIso8601String(),
    );

    await ref.read(bookcaseWriteViewModelProvider.notifier).createBook(book);
  }

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
        title: Text('독서 기록'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(border: Border.all(width: 1)),
              child: TextField(
                controller: _textEditingControllerTitle,
                decoration: InputDecoration(
                  border: InputBorder.none, // 기본 테두리 제거
                  hintText: '데이터를 입력하세요', // 힌트 텍스트 추가
                  contentPadding: EdgeInsets.all(10), // 패딩 추가
                ),
                maxLines: null, // 다중 행 입력 가능
                expands: true, // Container 전체를 차지하도록 설정
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(border: Border.all(width: 1)),
              child: Row(
                children: [
                  ClipRRect(
                    child: Image.network(
                      widget.image,
                      width: 65,
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 250,
                          child: Text(
                            widget.title,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Text(widget.author, overflow: TextOverflow.ellipsis),
                        Text(widget.pubdate, overflow: TextOverflow.ellipsis),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(border: Border.all(width: 1)),
              child: TextField(
                controller: _textEditingControllerDetail,
                decoration: InputDecoration(
                  border: InputBorder.none, // 기본 테두리 제거
                  hintText: '데이터를 입력하세요', // 힌트 텍스트 추가
                  contentPadding: EdgeInsets.all(10), // 패딩 추가
                ),
                maxLines: null, // 다중 행 입력 가능
                expands: true, // Container 전체를 차지하도록 설정
              ),
            ),
            TextButton(onPressed: _saveBook, child: Text('저장하기'))
          ],
        ),
      ),
    );
  }
}
