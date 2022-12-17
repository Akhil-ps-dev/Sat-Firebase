import 'dart:convert';
import 'dart:developer';

import 'package:chat_me/api/api.dart';
import 'package:chat_me/core/color.dart';
import 'package:chat_me/presentation/Home/widget/chat_widget.dart';
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
          final list = [];
          if (snapshot.hasData) {
            final data = snapshot.data?.docs;
            for (var i in data!) {
              log('Data: ${jsonEncode(i.data())}');
              list.add(i.data()['name']);
            }
          }
          return ListView.builder(
              itemCount: list.length,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return  Text('Name : ${list[index]}');
              });
        }),
      ),
    );
  }
}
