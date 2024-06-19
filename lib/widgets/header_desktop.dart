import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/navitems.dart';
import 'package:portfolio/styles/style.dart';
import 'package:portfolio/widgets/kaizo_logo.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({
    super.key,
    required this.onNavMenuTap,
  });
  final Function(int) onNavMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      //Main
      height: 65,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      width: double.maxFinite,
      decoration: hDecoration,
      child: Row(
        children: [
          KaizoLogo(
            onTap: () {},
          ),
          const Spacer(),
          for (int i = 0; i < buttonTitles.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextButton(
                onPressed: () {
                  onNavMenuTap(i);
                },
                child: Text(
                  buttonTitles[i],
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: ccolor.whitePrimary,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
