import 'package:chat_me/core/color.dart';
import 'package:chat_me/presentation/Home/screen_home.dart';
import 'package:chat_me/presentation/Home/widget/home_widget.dart';
import 'package:flutter/material.dart';

//medaiQuiery
late Size media;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    media = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/images/user.png',
            alignment: Alignment.center,
          ),
        ),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          icon: const Icon(Icons.login),
          label: const Text(
            'Login with Google',
            style: TextStyle(color: kWhite),
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => ScreenHome(),
              ),
            );
          },
        ),
      ]),
    );
  }
}
