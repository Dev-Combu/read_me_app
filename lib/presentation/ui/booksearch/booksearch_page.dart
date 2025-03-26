import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:read_me_app/presentation/ui/booksearch/booksearch_view_model.dart';

class BooksearchPage extends ConsumerStatefulWidget {
  const BooksearchPage({super.key});

  @override
  ConsumerState<BooksearchPage> createState() => _BooksearchPageState();
}

class _BooksearchPageState extends ConsumerState<BooksearchPage> {
  TextEditingController textEditingController = TextEditingController();

  int start = 1;
  bool isFetching = false;

  bookSearch(String text, int start, {bool append = false}) async {
    if (isFetching) return; // 중복 호출 방지
    isFetching = true;
    await Future.delayed(Duration(milliseconds: 500));
    await ref
        .read(booksearchViewModel.notifier)
        .fetchNaver(text, start, append: append);

    setState(() {
      isFetching = false;
      if (append) this.start += 10; // 다음 페이지 요청을 위한 start 값 증가
    });
  }

  @override
  Widget build(BuildContext context) {
    final naverResults = ref.watch(booksearchViewModel);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: TextField(
            maxLines: 1,
            controller: textEditingController,
            onSubmitted: (text) => bookSearch(text, 1, append: false), // 🔄 새 검색 (초기화)
            decoration: InputDecoration(
              hintText: '검색어를 입력해 주세요',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.grey),
              ),
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () => bookSearch(textEditingController.text, 1, append: false),
              child: Container(
                width: 50,
                height: 50,
                color: Colors.transparent,
                child: Icon(Icons.search),
              ),
            ),
          ],
        ),
        body: naverResults.when(
          data: (results) {
            return NotificationListener<ScrollNotification>(
              onNotification: (notification) {
                if (notification is ScrollUpdateNotification &&
                    notification.metrics.pixels >=
                        notification.metrics.maxScrollExtent) {
                  bookSearch(textEditingController.text, start, append: true);  // 🔄 무한 스크롤 (데이터 추가)
                }
                return false;
              },
              child: ListView.separated(
                itemBuilder: (context, index) {
                  final result = results[index];
                  return SizedBox(
                    height: 100,
                    width: 200,
                    child: Row(
                      children: [
                        ClipRRect(
                          child: Image.network(
                            result.image,
                            width: 56,
                            height: 56,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 300,
                              child: Text(
                                result.title,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Text(result.author, overflow: TextOverflow.ellipsis),
                            Text(result.pubdate, overflow: TextOverflow.ellipsis),
                            Text(index.toString())
                          ],
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (_, __) => Divider(color: Color(0xFFE5E8EB)),
                itemCount: results.length,
              ),
            );
          },
          loading: () => Center(child: CircularProgressIndicator()),
          error: (error, stack) => Center(child: Text('오류 발생: ${error.toString()}')),
        ),
      ),
    );
  }
}
