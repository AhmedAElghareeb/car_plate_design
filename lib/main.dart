import 'package:car_plate_widget/car_plate_test.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: CarPlateWidget(
          arabicNumbers: "٨٨٩٩",
          arabicLetters: "ق م ر",
          englishNumbers: "8899",
          englishLetters: "R M Q",
        ),
      ),
    );
  }
}
