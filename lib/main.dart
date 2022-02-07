import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_airplane_v2/cubit/page_cubit.dart';
import 'package:flutter_airplane_v2/ui/pages/bonus_page.dart';
import 'package:flutter_airplane_v2/ui/pages/get_started_page.dart';
import 'package:flutter_airplane_v2/ui/pages/main_page.dart';
import 'package:flutter_airplane_v2/ui/pages/sign_up_page.dart';
import 'package:flutter_airplane_v2/ui/pages/splash_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(const MyApp());
// }

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
      ],
      child: MaterialApp(
        title: ''.toString(),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashPage(),
          '/get-started': (context) => const GetStarted(),
          '/sign-up': (context) => const SignUpPage(),
          '/bonus': (context) => const BonusPage(),
          '/main': (context) => const MainPage(),
        },
      ),
    );
  }
}
