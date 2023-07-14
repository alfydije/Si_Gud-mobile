import 'package:flutter/material.dart';
import 'LoginScreen.dart';


class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });

    return Scaffold(
      body: Container(
        child: Center(
          child: Transform.scale(
            scale: 0.8,
            child: Image.asset('assets/logo_sigud.png'),
          ),
        ),
      ),
    );
  }
}

