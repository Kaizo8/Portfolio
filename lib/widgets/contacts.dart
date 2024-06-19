import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/social_media_links.dart';
import 'dart:js' as js;

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 25),
      color: ccolor.bLight1,
      child: Column(
        children: [
          const Text(
            "Contacts",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: ccolor.whitePrimary,
            ),
          ),
          const SizedBox(height: 15),
          const Divider(),
          const SizedBox(height: 15),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [Smlinks.instagram]);
                },
                child: Image.asset(
                  "assets/images/instagram.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [Smlinks.github]);
                },
                child: Image.asset(
                  "assets/images/github.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [Smlinks.linkedin]);
                },
                child: Image.asset(
                  "assets/images/linkedin.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [Smlinks.x]);
                },
                child: Image.asset(
                  "assets/images/xlogo.png",
                  width: 28,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
