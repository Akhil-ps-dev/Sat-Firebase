import 'dart:async';

import 'package:chat_me/core/color.dart';
import 'package:chat_me/presentation/Home/screen_home.dart';
import 'package:chat_me/presentation/SplashScreen/widget/png_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../core/size.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ScreenHome(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            PngsTile(),
            SpinKitThreeBounce(
              color: kBlack,
              size: kSize35,
            ),
          ],
        ),
      ),
    );
  }
}
