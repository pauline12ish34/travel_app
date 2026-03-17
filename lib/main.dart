import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const RwandaTravelApp());
}

class RwandaTravelApp extends StatelessWidget {
  const RwandaTravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData baseTheme = ThemeData.light();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rwanda Explorer',
      theme: baseTheme.copyWith(
        scaffoldBackgroundColor: const Color(0xFFF9FBF6),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0F766E),
          primary: const Color(0xFF0F766E),
          secondary: const Color(0xFFB45309),
          brightness: Brightness.light,
        ),
        textTheme: GoogleFonts.sourceSans3TextTheme(baseTheme.textTheme),
        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: const Color(0xFF1E293B),
          titleTextStyle: GoogleFonts.playfairDisplay(
            color: const Color(0xFF1E293B),
            fontWeight: FontWeight.w700,
            fontSize: 24,
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
