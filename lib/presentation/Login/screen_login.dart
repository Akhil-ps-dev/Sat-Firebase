
import 'dart:developer';
import 'dart:io';

import 'package:chat_me/core/color.dart';
import 'package:chat_me/presentation/Home/screen_home.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../api/api.dart';
import '../../core/size.dart';
import '../../widgets/dialog.dart';

//medaiQuiery
late Size media;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // handles google login button click
  _handleGoogleBtnClick() {
    //for showing progress bar
    Dialogs.showProgressBar(context);

    _signInWithGoogle().then((user) async {
      //for hiding progress bar
      Navigator.pop(context);

      // if (user != null) {
      //   log('\nUser: ${user.user}');
      //   log('\nUserAdditionalInfo: ${user.additionalUserInfo}');

      //   if ((await APIs.userExists())) {
      //     Navigator.pushReplacement(
      //         context, MaterialPageRoute(builder: (_) => const ScreenHome()));
      //   } else {
      //     await APIs.createUser().then((value) {
      //       Navigator.pushReplacement(
      //           context, MaterialPageRoute(builder: (_) => const ScreenHome()));
      //     });
      //   }
      // }
    });
  }

  Future<UserCredential?> _signInWithGoogle() async {
    try {
      await InternetAddress.lookup('google.com');
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Once signed in, return the UserCredential
      return await APIs.auth.signInWithCredential(credential);
    } catch (e) {
      log('\n_signInWithGoogle: $e');
      Dialogs.showSnackbar(context, 'Something Went Wrong (Check Internet!)');
      return null;
    }
  }

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
              _handleGoogleBtnClick();
            },
          ),
        ]),
      ),
    );
  }
}
