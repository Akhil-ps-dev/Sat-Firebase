import 'package:chat_me/core/color.dart';
import 'package:chat_me/core/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../domain/chat_user_model/chat_user.dart';

class ChatWidget extends StatefulWidget {
  final ChatUser user;

  const ChatWidget({super.key, required this.user});

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: kGrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: InkWell(
          onTap: () {},
          child: ListTile(
            leading: const CircleAvatar(
              child: Icon(CupertinoIcons.person),
            ),
            title: Text(
              widget.user.name,
              style:const TextStyle(fontWeight: FontWeight.bold, color: kBlack),
            ),
            subtitle: Text(
              widget.user.about,
              style: TextStyle(color: kBlack),
            ),
            trailing: Text(
              'Time',
              style: const TextStyle(color: kBlack),
            ),
          ),
        ),
      ),
    );
  }
}
