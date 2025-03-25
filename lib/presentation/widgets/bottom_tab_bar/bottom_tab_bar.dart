import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:read_me_app/presentation/widgets/bottom_tab_bar/bottom_tab_bar_view_model.dart';

// 상수 선언으로 가독성 향상
const int homePage = 0;
const int bookcasePage = 1;
const int booksearchPage = 2;

class BottomTabBar extends ConsumerStatefulWidget {
  const BottomTabBar({super.key});

  @override
  ConsumerState<BottomTabBar> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends ConsumerState<BottomTabBar> {

  void _handleNavigation(BuildContext context, WidgetRef ref, int value) {
    final currentPage = ref.watch(bottomNavigationProvider);

    final routes = ['/', '/bookcase','/booksearch'];
    if (currentPage != value) {
      context.go(routes[value]);
      ref.read(bottomNavigationProvider.notifier).updatePage(value);
    }
  }

  BottomNavigationBarItem _buildNavItem({
    required IconData icon,
    required String label,
    required bool isSelected,
  }) {
    return BottomNavigationBarItem(
      icon: Icon(icon, color: isSelected ? Colors.blue : Colors.grey),
      label: label,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final currentPage = ref.watch(bottomNavigationProvider);
        return BottomNavigationBar(
          currentIndex: currentPage,
          onTap: (value) => _handleNavigation(context, ref, value),
          items: [
            _buildNavItem(
                icon: Icons.home, label: '홈', isSelected: currentPage == homePage),
            _buildNavItem(
                icon: Icons.book, label: 'BookCase', isSelected: currentPage == bookcasePage),
            _buildNavItem(
                icon: Icons.search, label: 'BookSearch', isSelected: currentPage == booksearchPage),
          ],
        );
      },
    );
  }
}
