import 'package:firebase_core/firebase_core.dart';
import 'package:locl/home.dart';
import 'package:locl/screens/AllPolicies.dart';
import 'package:locl/screens/login.dart';
import 'package:locl/screens/FormPage.dart';
import 'package:locl/screens/Suggestions.dart';
import 'package:locl/screens/Dashboard.dart';
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
      debugShowCheckedModeBanner: false,
      routes: {
        FormPage.id: (context) => const FormPage(),
        Suggestions.id: (context) => const Suggestions(),
        Dashboard.id: (context) => const Dashboard(),
        HomeScreen.id: (context) => const HomeScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        AllPolicies.id: (context) => const AllPolicies(),
      },
      initialRoute: LoginScreen.id,
    );
  }
}
