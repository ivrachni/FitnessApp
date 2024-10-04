import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitnessapp/view/logIn/complete_profile.dart';
import 'package:fitnessapp/view/onBoarding/started_view.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        //user logged in
        if (snapshot.hasData) {
          return const CompleteProfile();
        }

        //user not logged in
        else {
          return const StartedView();
        }
      },
    ));
  }
}
