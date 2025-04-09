import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
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
      body: ListView.separated(
        itemBuilder: (context, index) {
          final result = bookcaseResult[index];
          return GestureDetector(
            onTap: () {
              context.go('/write');
            },
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Theme.of(context).colorScheme.surface,
                ),
                padding: const EdgeInsets.all(12),
                height: 130,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        result.image,
                        width: 65,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            result.title,
                            style: Theme.of(context).textTheme.titleMedium,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const Spacer(),
                          Text(
                            result.bookTitle,
                            style: Theme.of(context).textTheme.bodyMedium,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            result.author,
                            style: Theme.of(context).textTheme.bodySmall,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
