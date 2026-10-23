import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';
import 'screens/card_detail_screen.dart';
import 'screens/gift_cards_screen.dart';
import 'screens/transactions_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(const SanzipayApp());
}

class SanzipayApp extends StatelessWidget {
  const SanzipayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SANZIPAY',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF0C3B2E),
        scaffoldBackgroundColor: const Color(0xFF0C3B2E),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFFBA00),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}