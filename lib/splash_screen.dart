import 'package:flutter/material.dart';
import 'package:si_gud/on_boarding.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingScreen()),
      );
    });

    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: Center(
                child: Transform.scale(
                  scale: 0.8,
                  child: Image.asset('assets/sigud.png'),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(bottom: 40.0),
                child: Column(
                  children: [
                    Text(
                      'Tentang SIGUD dalam satu Aplikasi',
                      style: TextStyle(
                        color: Color.fromARGB(255, 2, 31, 55),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'dimana petugas dan admin berkolaborasi untuk',
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'menjaga gudang tetap terorganisir dan efisien.',
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
