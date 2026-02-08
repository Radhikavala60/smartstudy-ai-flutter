import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const SmartStudyAI());
}

class SmartStudyAI extends StatelessWidget {
  const SmartStudyAI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SmartStudy AI',
      home: HomeScreen(),
    );
  }
}

