import 'package:flutter/material.dart';
import 'screens/shopping_categories_screen.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF3538CD)),
        fontFamily: 'Inter',
        useMaterial3: true,
      ),
      home: const ShoppingCategoriesScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
