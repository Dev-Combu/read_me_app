import 'package:flutter/material.dart';
import 'package:read_me_app/presentation/widgets/bottom_tab_bar/bottom_tab_bar.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('home',),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Text('home'),
      ),
    );
  }
}