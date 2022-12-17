import 'package:flutter/material.dart';

import '../../../core/color.dart';
import '../../../core/size.dart';
class MainAppBar extends StatelessWidget {
  const MainAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Chat',
          style: TextStyle(
            color: kUnselectColor,
          ),
        ),
        const Text(
          'ME',
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        KSizedBox.kDefSizedBoxW10,
        const Icon(
          Icons.chat_rounded,
          color: kPrimaryColor,
        ),
      ],
    );
  }
}
