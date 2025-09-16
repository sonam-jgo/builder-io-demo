import 'package:flutter/material.dart';
import 'screens/shopping_categories_screen.dart';
import 'screens/background_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet Shopping',
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF6D55FF), // Purple from Figma design
          secondary: Color(0xFF6D55FF),
          surface: Color(0xFF292829), // Top gradient color
          background: Color(0xFF070707), // Bottom gradient color
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: Colors.white,
          onBackground: Colors.white,
        ),
        fontFamily: 'Inter',
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFF070707),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      home: const BackgroundScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
