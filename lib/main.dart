import 'package:flutter/material.dart';
import 'package:ice_cream_stand/screens/start_screen.dart';

void main() {
  runApp(const IceCreamStand());
}

class IceCreamStand extends StatelessWidget {
  const IceCreamStand({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
            return MaterialApp(
                debugShowCheckedModeBanner: false,
      home: const StartScreen(),
    );
  }
}

