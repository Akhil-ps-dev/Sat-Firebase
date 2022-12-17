import 'package:chat_me/presentation/Home/screen_home.dart';
import 'package:chat_me/presentation/Login/screen_login.dart';
import 'package:chat_me/presentation/Main/screen_main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
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
      home: LoginScreen(),
    );
  }
}
