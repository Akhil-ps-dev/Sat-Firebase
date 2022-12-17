import 'package:chat_me/core/color.dart';
import 'package:chat_me/presentation/Home/screen_home.dart';
import 'package:chat_me/presentation/Home/widget/home_widget.dart';
import 'package:flutter/material.dart';

import '../../core/size.dart';

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
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            height: 150,
            width: 150,
            child: Image.asset(
              'assets/images/user.png',
              alignment: Alignment.center,
            ),
          ),
          KSizedBox.kDeftSizedBoxH30,
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
                  builder: (context) => LoginScreen(),
                ),
              );
            },
          ),
        ]),
      ),
    );
  }
}
