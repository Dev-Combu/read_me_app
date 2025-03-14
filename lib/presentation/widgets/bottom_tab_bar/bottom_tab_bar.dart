import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:read_me_app/presentation/widgets/bottom_tab_bar/bottom_tab_bar_view_model.dart';

class BottomTabBar extends ConsumerStatefulWidget {
  const BottomTabBar({super.key});

  @override
  ConsumerState<BottomTabBar> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends ConsumerState<BottomTabBar> {

  @override
  Widget build(BuildContext context) {


    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
      ],
    );
  }
}