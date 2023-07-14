import 'package:flutter/material.dart';
import 'package:si_gud/LoginScreen.dart';

import 'splash_screen.dart';

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
        '/login': (context) =>
            LoginScreen(), // Menambahkan route untuk halaman utama
      },
    );
  }
}

