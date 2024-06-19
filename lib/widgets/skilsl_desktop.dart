import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/widgets/skills_items_list.dart';

class SkillDesktop extends StatelessWidget {
  const SkillDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 450,
          ),
          child: Wrap(
            spacing: 5,
            runSpacing: 5,
            children: [
              for (int i = 0; i < platformitems.length; i++)
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: ccolor.bLight2,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    leading: Image.asset(
                      platformitems[i]["img"],
                      width: 26,
                    ),
                    title: Text(platformitems[i]["title"]),
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(width: 50),
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 500,
            ),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                for (int i = 0; i < skillitems.length; i++)
                  Chip(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 16,
                    ),
                    backgroundColor: ccolor.bLight2,
                    label: Text(skillitems[i]["title"]),
                    avatar: Image.asset(
                      skillitems[i]["img"],
                      width: 26,
                    ),
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
