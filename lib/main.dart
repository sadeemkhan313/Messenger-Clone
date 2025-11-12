import 'package:flutter/material.dart';
import 'package:messenger_clone/domain/constants/appthemes.dart';

import 'repository/screens/onboarding/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.darkTheme,
      home: OnboardingScreen(),
    );
  }
}

