import 'package:aging_together/screens/caretaker_feature/caretaker.dart';
import 'package:aging_together/screens/caretaker_feature/question.dart';
import 'package:aging_together/screens/caretaker_feature/quiz.dart';
import 'package:aging_together/screens/caretaker_feature/self_test.dart';
import 'package:aging_together/screens/home_screen.dart';
import 'package:aging_together/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Montserrat',
          highlightColor: const Color.fromRGBO(8, 143, 143, 0.5)),
      initialRoute: 'splash_screen',
      routes: {
        'splash_screen': (context) => const SplashScreen(),
        'home_screen': (context) => const HomeScreen(),
        'care_taker': (context) => const CaretakerBooking(),
        'questions': (context) => SelfTest(),
      },
    );
  }
}
