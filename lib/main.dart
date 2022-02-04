import 'package:flutter/material.dart';
import 'package:flutter_airplane_v2/ui/pages/splash_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ''.toString(),
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
    );
  }
}
