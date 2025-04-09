import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:read_me_app/domain/entity/reading_book_entity.dart';
import 'package:read_me_app/presentation/ui/bookcase_write/bookcase_write_view_model.dart';

class BookcaseWritePage extends ConsumerStatefulWidget {
  const BookcaseWritePage({
    super.key,
    required this.image,
    required this.author,
    required this.booktitle,
    this.title,
    this.detail,
    this.date,
    this.id,
    required this.isWriting,
  });

  final String? id;
  final String image;
  final String author;
  final String booktitle;
  final String? title;
  final String? detail;
  final String? date;
  final bool isWriting;

  @override
  ConsumerState<BookcaseWritePage> createState() => _BookcaseWritePageState();
}

class _BookcaseWritePageState extends ConsumerState<BookcaseWritePage> {
  final TextEditingController _textEditingControllerTitle =
      TextEditingController();
  final TextEditingController _textEditingControllerDetail =
      TextEditingController();

  Future<void> _saveBook() async {
    final book = ReadingBookEntity(
      id: '',
      image: widget.image,
      author: widget.author,
      bookTitle: widget.booktitle,
      title: _textEditingControllerTitle.text,
      detail: _textEditingControllerDetail.text, // 사용자가 입력한 데이터 저장
      date: DateTime.now().toIso8601String(),
    );

    await ref.read(bookcaseWriteViewModelProvider.notifier).createBook(book);
  }

  Future<void> _editBook() async {
    final book = ReadingBookEntity(
      id: widget.id ?? '',
      image: widget.image,
      author: widget.author,
      bookTitle: widget.booktitle,
      title: _textEditingControllerTitle.text,
      detail: _textEditingControllerDetail.text, // 사용자가 입력한 데이터 저장
      date: DateTime.now().toIso8601String(),
    );

    await ref.read(bookcaseWriteViewModelProvider.notifier).updateBook(book);

    setState(() {
      isEditing = false;
    });
  }

  Future<void> _deleteBook(String id) async {
    await ref.read(bookcaseWriteViewModelProvider.notifier).deleteBook(id);
  }

  bool isEditing = false;
  late bool isWriting;

  @override
  void initState() {
    super.initState();
    _textEditingControllerTitle.text = widget.title ?? '';
    _textEditingControllerDetail.text = widget.detail ?? '';
    isWriting = widget.isWriting;
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
            SizedBox(
              width: double.infinity,
              height: 50,
              child: TextField(
                controller: _textEditingControllerTitle,
                decoration: InputDecoration(
                  hintText: '제목를 입력하세요', // 힌트 텍스트 추가
                  contentPadding: EdgeInsets.all(10),
                ),
                maxLines: null, // 다중 행 입력 가능
                expands: true, // Container 전체를 차지하도록 설정
                readOnly: isWriting ? false : true,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              height: 100,
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
                            widget.booktitle,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Text(widget.author, overflow: TextOverflow.ellipsis),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              width: double.infinity,
              height: 400,
              child: TextField(
                controller: _textEditingControllerDetail,
                decoration: InputDecoration(
                  border: InputBorder.none, // 기본 테두리 제거
                  hintText: '내용를 입력하세요', // 힌트 텍스트 추가
                  contentPadding: EdgeInsets.all(10), // 패딩 추가
                ),
                maxLines: null, // 다중 행 입력 가능
                expands: true, // Container 전체를 차지하도록 설정
                readOnly: isWriting ? false : true,
              ),
            ),
            widget.isWriting
                ? TextButton(
                    onPressed: _saveBook,
                    child: Text('저장하기'),
                  )
                : isEditing
                    ? Row(
                        children: [
                          TextButton(
                            onPressed: _editBook,
                            child: Text('수정 저장하기'),
                          ),
                          TextButton(
                            onPressed: () {
                              deleteDialog(context);
                            },
                            child: Text('삭제하기'),
                          ),
                        ],
                      )
                    : Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(
                                () {
                                  isWriting = true;
                                  isEditing = true;
                                },
                              );
                            },
                            child: Text('수정하기'),
                          ),
                        ],
                      )
          ],
        ),
      ),
    );
  }



  Future<dynamic> deleteDialog(BuildContext context) {
    return showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text('삭제 확인'),
                                content: Text('정말 삭제하시겠습니까?'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.of(context).pop(), // 취소
                                    child: Text('취소'),
                                  ),
                                  TextButton(
                                    onPressed: () async {
                                      Navigator.of(context).pop(); // 다이얼로그 닫기
                                      await _deleteBook(
                                          widget.id!); // 실제 삭제 로직
                                      if (context.mounted) {
                                        context.pop(); // 이전 화면으로 돌아가기
                                      }
                                    },
                                    child: Text('삭제'),
                                  ),
                                ],
                              ),
                            );
  }
}
