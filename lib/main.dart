import 'package:flutter/material.dart';
import 'package:mediquick/widget/apotek/cart_provider.dart';
import 'package:provider/provider.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => CartProvider())],
      child: const MediQuick(),
    ),
  );
}

class MediQuick extends StatelessWidget {
  const MediQuick({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
