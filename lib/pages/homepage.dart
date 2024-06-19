import 'dart:html';
import 'dart:js_interop_unsafe';
import 'dart:js' as js;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/navitems.dart';
import 'package:portfolio/constants/social_media_links.dart';
import 'package:portfolio/styles/style.dart';
import 'package:portfolio/widgets/contacts.dart';
import 'package:portfolio/widgets/main_Desktop.dart';
import 'package:portfolio/widgets/drawer.dart';
import 'package:portfolio/widgets/header_desktop.dart';
import 'package:portfolio/widgets/header_mobile.dart';
import 'package:portfolio/widgets/kaizo_logo.dart';
import 'package:portfolio/widgets/main_mobile.dart';
import 'package:portfolio/widgets/projects.dart';
import 'package:portfolio/widgets/rights.dart';
import 'package:portfolio/widgets/skills_items_list.dart';
import 'package:portfolio/widgets/skills_mobile.dart';
import 'package:portfolio/widgets/skilsl_desktop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: ccolor.scaffolbg,
        endDrawer: MobileDrawer(
          onNavItemTap: (int navIndex) {
            scaffoldKey.currentState?.closeEndDrawer();
            scrollToSection(navIndex);
          },
        ),
        body: SingleChildScrollView(
          controller: scrollController,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(key: navKeys.first),
              if (constraints.maxWidth >= MinWidth)
                HeaderDesktop(
                  onNavMenuTap: (int navIndex) {
                    scrollToSection(navIndex);
                  },
                )
              else
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),
              if (constraints.maxWidth >= MinWidth)
                const MainDesktop()
              else
                const MainMobile(),
              Container(
                key: navKeys[1],
                width: screenWidth,
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                color: ccolor.bLight1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "What I learnt",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: ccolor.whitePrimary,
                      ),
                    ),
                    const SizedBox(height: 50),
                    if (constraints.maxWidth >= MedWidth)
                      const SkillDesktop()
                    else
                      const SkillsMobile(),
                  ],
                ),
              ),
              Container(
                key: navKeys[2],
                width: screenWidth,
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                child: const Column(
                  children: [
                    Text(
                      "Projects",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: ccolor.whitePrimary,
                      ),
                    ),
                    Projects(),
                  ],
                ),
              ),
              Contacts(
                key: navKeys[3],
              ),
              const Rights(),
            ],
          ),
        ),
      );
    });
  }

  void scrollToSection(int navIndex) {
    final key = navKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
