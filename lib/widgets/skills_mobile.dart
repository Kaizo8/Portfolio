import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/widgets/skills_items_list.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 500,
      ),
      child: Column(
        children: [
          for (int i = 0; i < platformitems.length; i++)
            Container(
              margin: const EdgeInsets.only(bottom: 5),
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: ccolor.bLight2,
                borderRadius: BorderRadius.circular(5),
              ),
              child: ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                leading: Image.asset(
                  platformitems[i]["img"],
                  width: 26,
                ),
                title: Text(platformitems[i]["title"]),
              ),
            ),
          const SizedBox(height: 50),
          Wrap(
            spacing: 10,
            runSpacing: 20,
            alignment: WrapAlignment.center,
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
          )
        ],
      ),
    );
  }
}
