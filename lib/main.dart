import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neon_colors_ui/constants.dart';
import 'package:neon_colors_ui/screens/home_screen.dart';
import 'package:neon_colors_ui/screens/intro_screen.dart';
import 'package:neon_colors_ui/screens/movie_modal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/home" : (context) => const MovieModal(),
        "/movie" : (context) => const IntroScreen(),
        "/" : (context) => const HomeScreen(),
      },
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: Colors.white,
          fontFamily: GoogleFonts.openSans().fontFamily
        ),
        scaffoldBackgroundColor: kBlack,
      ),
    );
  }
}

