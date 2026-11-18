name: study_app
description: Study Dashboard + Pomodoro + Subject Tracker + App Blocker
publish_to: "none"
version: 1.0.0+1

environment:
  sdk: ">=3.0.0 <4.0.0"

dependencies:
  flutter:
    sdk: flutter
  provider: ^6.1.2
  shared_preferences: ^2.2.3
  fl_chart: ^0.68.0
  percent_indicator: ^4.2.3

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^4.0.0

flutter:
  uses-material-design: true
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/study_provider.dart';
import 'screens/home_dashboard.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => StudyProvider(),
      child: const StudyApp(),
    ),
  );
}

class StudyApp extends StatelessWidget {
  const StudyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study Companion',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
      ),
      home: const HomeDashboard(),
    );
  }
}