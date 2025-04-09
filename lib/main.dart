import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:read_me_app/firebase_options.dart';
import 'package:read_me_app/presentation/app/router.dart';
import 'package:read_me_app/presentation/theme/theme.dart';

void main() async {

  //Dotenv 연동
  await dotenv.load(fileName: ".env");

  //Firebase 연동
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  //Riverpod 사용
  runApp(const ProviderScope(child: MyApp()));
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Record Reading',
      routerConfig: router,
      theme: AppTheme.lightTheme,
    );
  }
}
