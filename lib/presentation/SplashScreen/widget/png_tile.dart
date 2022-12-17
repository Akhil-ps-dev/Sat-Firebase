import 'package:flutter/material.dart';
import '../../../../core/size.dart';
import '../../../core/image.dart';

class PngsTile extends StatelessWidget {
  const PngsTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kSize60,
      width: kSize60,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(kSplashIcon),
        ),
      ),
    );
  }
}
