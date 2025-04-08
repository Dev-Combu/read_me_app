import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:read_me_app/presentation/ui/bookcase/bookcase_view_model.dart';

class BookcasePage extends ConsumerStatefulWidget {
  const BookcasePage({super.key});

  @override
  ConsumerState<BookcasePage> createState() => _BookcasePageState();
}

class _BookcasePageState extends ConsumerState<BookcasePage> {
  @override
  Widget build(BuildContext context) {
    final bookcaseResult = ref.watch(bookcaseViewModel);

    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        itemBuilder: (context, index) {
          final result = bookcaseResult![index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 100,
              width: 200,
              child: Row(
                children: [
                  ClipRRect(
                    child: Image.network(
                      result.image,
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
                            result.title,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Text(
                          result.author,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (_, __) => Divider(color: Color(0xFFE5E8EB)),
        itemCount: bookcaseResult!.length,
      ),
    );
  }
}
