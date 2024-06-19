import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: screenHeight / 1.2,
      constraints: const BoxConstraints(
        minHeight: 350,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Hi \nI'm Shreshth \nA Flutter Developer",
                  style: TextStyle(
                    fontSize: 30,
                    height: 1.5,
                    fontWeight: FontWeight.bold,
                    color: ccolor.whitePrimary,
                  )),
              const SizedBox(height: 15),
              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("About Me"),
                  
                ),

              ),
            ],
          ),
          Image.asset(
            "assets/images/smileypngg.png",
            width: screenWidth / 2.5,
          ),
        ],
      ),
    );
  }
}
