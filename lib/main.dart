import 'package:flutter/material.dart';
import 'package:si_gud/LoginScreen.dart';
import 'package:si_gud/on_boarding.dart';
import 'package:si_gud/splash_screen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(), // Menetapkan SplashScreen sebagai halaman awal
      routes: {
        '/onboarding': (context) => OnboardingScreen(),
        '/login': (context) => LoginScreen(),
      },
    );
  }
}
