import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:read_me_app/presentation/ui/bookcase/bookcase_page.dart';
import 'package:read_me_app/presentation/ui/booksearch/booksearch_page.dart';
import 'package:read_me_app/presentation/ui/home/home_page.dart';
import 'package:read_me_app/presentation/widgets/bottom_tab_bar/bottom_tab_bar.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  initialLocation: '/',
  navigatorKey: _rootNavigatorKey,
  routes: [
    ShellRoute(
      navigatorKey: GlobalKey<NavigatorState>(),
      builder: (context, state, child) {
        return Scaffold(
          body: child, // 현재 선택된 페이지가 child로 들어옴
          bottomNavigationBar: BottomTabBar(), // 고정된 네비게이션 바
        );
      },
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => HomePage(),
        ),
        GoRoute(
          path: '/bookcase',
          builder: (context, state) => BookcasePage(),
        ),
        GoRoute(
          path: '/booksearch',
          builder: (context, state) => BooksearchPage(),
        ),
      ],
    ),
  ],
);
