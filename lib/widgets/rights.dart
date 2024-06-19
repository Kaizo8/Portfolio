import 'package:flutter/cupertino.dart';
import 'package:portfolio/constants/colors.dart';

class Rights extends StatelessWidget {
  const Rights({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: double.maxFinite,
      alignment: Alignment.center,
      child: const Text(
        "Made by Shreshth with Flutter 3.19.5",
        style: TextStyle(
            fontWeight: FontWeight.w400, color: ccolor.whiteSecondary),
      ),
    );
  }
}
