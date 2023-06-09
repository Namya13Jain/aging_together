import 'package:aging_together/screens/about.dart';
import 'package:aging_together/screens/caretaker_feature/caretaker.dart';
import 'package:aging_together/screens/caretaker_feature/question.dart';
import 'package:aging_together/screens/caretaker_feature/quiz.dart';
import 'package:aging_together/screens/caretaker_feature/self_test.dart';
import 'package:aging_together/screens/companion/start.dart';
import 'package:aging_together/screens/home_screen.dart';
import 'package:aging_together/screens/learn.dart';
import 'package:aging_together/screens/reminders.dart';
import 'package:aging_together/screens/select_role.dart';
import 'package:aging_together/screens/signin_screen.dart';
import 'package:aging_together/screens/signup_screen.dart';
import 'package:aging_together/screens/splash_screen.dart';
import 'package:aging_together/screens/students/intro.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of our application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: const Color.fromRGBO(8, 143, 143, 1),
          fontFamily: 'Montserrat',
          highlightColor: const Color.fromRGBO(8, 143, 143, 0.5)),
      initialRoute: 'splash_screen',
      routes: {
        'login': (context) => const SignInScreen(),
        'splash_screen': (context) => const SplashScreen(),
        'home_screen': (context) => const HomeScreen(),
        'care_taker': (context) => const CaretakerBooking(),
        'questions': (context) => SelfTest(),
        'about_us': (context) => const AboutUs(),
        'reminders': (context) => const RemindersPage(),
        'learn': (context) => const LearnPage(),
        'start': (context) => Start(),
        'intro': (context) => intro(),
        'role': (context) => const Roles(),
        'signup': (context) => const SignUpScreen(),
      },
    );
  }
}
