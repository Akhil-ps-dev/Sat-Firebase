import 'package:chat_me/presentation/Home/screen_home.dart';
import 'package:chat_me/presentation/SplashScreen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat Me',
      theme: ThemeData(
        splashFactory: InkRipple.splashFactory,
        primaryColor: Colors.white,
        primaryColorLight: Colors.white,
        brightness: Brightness.light,
        fontFamily: GoogleFonts.lato().fontFamily,
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
        ),
      ),
      home: SplashScreen(),
    );
  }
}
