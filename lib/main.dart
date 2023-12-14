import 'package:firebase_core/firebase_core.dart';
import 'package:locl/home.dart';
import 'package:locl/screens/login.dart';
import 'package:locl/screens/page1.dart';
import 'package:locl/screens/page2.dart';
import 'package:locl/screens/page3.dart';
import 'firebase_options.dart';

import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Page1.id: (context) => const Page1(),
        Page2.id: (context) => const Page2(),
        Page3.id: (context) => const Page3(),
        HomeScreen.id: (context) => const HomeScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
      },
      initialRoute: LoginScreen.id,
    );
  }
}
