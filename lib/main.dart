import 'package:flutter/material.dart';
import 'package:flutter_airplane_v2/ui/pages/bonus_page.dart';
import 'package:flutter_airplane_v2/ui/pages/choose_seat_page.dart';
import 'package:flutter_airplane_v2/ui/pages/get_started_page.dart';
import 'package:flutter_airplane_v2/ui/pages/main_page.dart';
import 'package:flutter_airplane_v2/ui/pages/sign_up_page.dart';
import 'package:flutter_airplane_v2/ui/pages/splash_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ''.toString(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashPage(),
        '/get-started': (context) => const GetStarted(),
        '/sign-up': (context) => const SignUpPage(),
        '/bonus': (context) => const BonusPage(),
        '/main': (context) => const MainPage(),
        '/choose-seat': (context) => const ChooseSetPage(),
      },
      // home: const GetStarted(),
    );
  }
}
