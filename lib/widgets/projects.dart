import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: ccolor.bLight2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/projects/portfolio_project.png",
            height: 140,
            width: 250,
            fit: BoxFit.cover,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              "Portfolio",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: ccolor.whitePrimary,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              "A responsive site built using flutter carrying technical info about me.",
              style: TextStyle(
                fontSize: 10,
                color: ccolor.whiteSecondary,
              ),
            ),
          ),
          const Spacer(),
          Container(
            color: ccolor.bLight1,
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
            child: Row(
              children: [
                const Text(
                  "Source Code:",
                  style: TextStyle(
                    color: ccolor.yellowSecondary,
                    fontSize: 10,
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "assets/images/github.png",
                    width: 18,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
