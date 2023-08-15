import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:plant_disease_detector/src/auth_page/login_page.dart';
import 'package:plant_disease_detector/src/home_page/home.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //User is logged in
          if (snapshot.hasData) {
            return const Home();
          }
          //User isnot logged in
          else {
            return LoginPage();
          }
        },
      ),
    );
  }
}
