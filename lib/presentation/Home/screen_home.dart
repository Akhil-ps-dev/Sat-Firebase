import 'dart:convert';
import 'dart:developer';

import 'package:chat_me/api/api.dart';
import 'package:chat_me/core/color.dart';
import 'package:chat_me/domain/chat_user_model/chat_user.dart';
import 'package:chat_me/presentation/Home/widget/chat_widget.dart';
import 'package:chat_me/presentation/Home/widget/home_widget.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  List<ChatUser> list = [];

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
        elevation: 1,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        child: const Icon(
          Icons.add_comment_rounded,
          color: kWhite,
        ),
        onPressed: () {},
      ),
      body: StreamBuilder(
        stream: APIs.firestore.collection('users').snapshots(),
        builder: ((context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
            case ConnectionState.none:
              return const Center(child: CircularProgressIndicator());

            case ConnectionState.active:
            case ConnectionState.done:
              final data = snapshot.data?.docs;
              list =
                  data?.map((e) => ChatUser.fromJson(e.data())).toList() ?? [];
              if (list.isNotEmpty) {
                return ListView.builder(
                    itemCount: list.length,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return ChatWidget(user: list[index]);
                      // return Text('Name : ${list[index]}');
                    });
              } else {
                return const Center(
                  child: Text(
                    "No Conncetion Found",
                    style: TextStyle(color: kBlack, fontSize: 20),
                  ),
                );
              }
          }
        }),
      ),
    );
  }
}
