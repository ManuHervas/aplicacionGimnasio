import 'package:examenflutter/themes/app_themes_screen15.dart';
import 'package:flutter/material.dart';
import 'package:examenflutter/screens/screens15.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const HomeScreen(),
      theme: AppTheme.lightTheme,
    );
  }
}
