import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/navitems.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({super.key, required this.onNavItemTap});
  final Function(int) onNavItemTap;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ccolor.scaffolbg,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 20,
                bottom: 20,
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.close),
              ),
            ),
          ),
          for (int i = 0; i < buttonIcons.length; i++)
            ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              titleTextStyle: const TextStyle(
                color: ccolor.whitePrimary,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
              onTap: () {
                onNavItemTap(i);
              },
              leading: Icon(buttonIcons[i]),
              title: Text(buttonTitles[i]),
            ),
        ],
      ),
    );
  }
}
