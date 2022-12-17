import 'package:chat_me/core/color.dart';
import 'package:chat_me/core/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key});

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
            leading: CircleAvatar(
              child: Icon(CupertinoIcons.person),
            ),
            title: Text(
              'Name',
              style: TextStyle(fontWeight: FontWeight.bold, color: kBlack),
            ),
            subtitle: Text(
              'Message',
              style: TextStyle(color: kBlack),
            ),
            trailing: Text(
              'Time',
              style: TextStyle(color: kBlack),
            ),
          ),
        ),
      ),
    );
  }
}
