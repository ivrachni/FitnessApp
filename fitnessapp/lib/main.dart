import 'package:firebase_core/firebase_core.dart';
import 'package:fitnessapp/authentication/auth_service_screen.dart';
import 'package:fitnessapp/common/color_extension.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FitnessApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: TColor.primaryColor1,
        fontFamily: "Poppins",
        useMaterial3: true,
      ),
      home: const AuthPage(),
    );
  }
}
