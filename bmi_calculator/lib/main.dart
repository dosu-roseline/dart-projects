import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  static const MaterialColor customSwatch = MaterialColor(
    0xFF0A0E21,
    <int, Color>{
      50: Color(0xFF0A0E21),
      100: Color(0xFF0A0E21),
      200: Color(0xFF0A0E21),
      300: Color(0xFF0A0E21),
      400: Color(0xFF0A0E21),
      500: Color(0xFF0A0E21),
      600: Color(0xFF0A0E21),
      700: Color(0xFF0A0E21),
      800: Color(0xFF0A0E21),
      900: Color(0xFF0A0E21),
    },
  );
  const BMICalculator({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
        ),
      ),
      home: const InputPage(),
    );
  }
}
