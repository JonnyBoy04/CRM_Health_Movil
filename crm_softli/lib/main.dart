import 'package:crm_softli/config/theme/app_theme.dart';
import 'package:crm_softli/presentation/screens/log/log_in_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CRM Softli',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).theme(),
      home: const LogInScreen(),
    );
  }
}
