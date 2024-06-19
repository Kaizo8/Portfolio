import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 30,
      ),
      height: screenHeight,
      constraints: const BoxConstraints(
        minHeight: 560,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
            Image.asset(
              "assets/images/smileypngg.png",
              width: screenWidth,
            ),
          
          const Text("Hi, \nI'm Shreshth \nA Flutter Developer",
              style: TextStyle(
                fontSize: 24,
                height: 1.5,
                fontWeight: FontWeight.bold,
                color: ccolor.whitePrimary,
              )),
          const SizedBox(height: 15),
          SizedBox(
            width: 190,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("About Me"),
            ),
          ),
        ],
      ),
    );
  }
}
