import 'package:flutter/material.dart';
import 'package:kostcheck/screen/splash.dart';
import 'package:provider/provider.dart';
import 'package:kostcheck/provider/checklist_provider.dart';

void main() {
  runApp(
      ChangeNotifierProvider(
        create: (_) => ChecklistProvider(),
        child: const MainApp(),
      ),
    );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashScreen(),
    );
  }
}
