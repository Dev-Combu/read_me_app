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

  void bookSearch(String text) {
    ref.read(booksearchViewModel.notifier).fetchNaver(text);
  }

  @override
  Widget build(BuildContext context) {
    final naverResults = ref.watch(booksearchViewModel);

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: TextField(
            maxLines: 1,
            controller: textEditingController,
            onSubmitted: bookSearch,
            decoration: InputDecoration(
              hintText: '검색어를 입력해 주세요',
              border: MaterialStateOutlineInputBorder.resolveWith(
                (states) {
                  if (states.contains(WidgetState.focused)) {
                    return OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black),
                    );
                  }
                  return OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey),
                  );
                },
              ),
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                bookSearch(textEditingController.text);
              },
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
            return ListView.separated(
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
                          Text(
                            result.author,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            result.pubdate,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider(color: Color(0xFFE5E8EB));
              },
              itemCount: results.length,
            );
          },
          loading: () => Center(child: CircularProgressIndicator()), // 로딩 인디케이터
          error: (error, stack) =>
              Center(child: Text('오류 발생: ${error.toString()}')), // 에러 메시지
        ),
      ),
    );
  }
}
