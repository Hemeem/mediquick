import 'package:flutter/material.dart';
import 'package:mediquick/screens/splash_screen.dart';

void main() {
  runApp(MediQuick());
}

class MediQuick extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
