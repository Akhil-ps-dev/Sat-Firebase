import 'package:chat_me/core/color.dart';
import 'package:chat_me/presentation/Home/widget/home_widget.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const MainAppBar(),
        leading: const Icon(
          Icons.search,
          color: kBlack,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert, color: kBlack),
          ),
        ],
        centerTitle: true,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        child: const Icon(
          Icons.add_comment_rounded,
          color: kWhite,
        ),
        onPressed: () {},
      ),
    );
  }
}
