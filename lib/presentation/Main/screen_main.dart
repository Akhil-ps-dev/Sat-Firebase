import 'package:chat_me/presentation/Account/screen_account.dart';
import 'package:chat_me/presentation/Home/screen_home.dart';
import 'package:chat_me/presentation/Main/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';
class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});

  final _pages = [
    ScreenHome(),
    ScreenAccount()
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (BuildContext context, int index, Widget? _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
