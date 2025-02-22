import 'package:flutter/material.dart';
import 'package:reds_web_portfolio/all_sections/contact_me_section.dart';
import 'package:reds_web_portfolio/all_sections/footer_section.dart';
import 'package:reds_web_portfolio/all_sections/projects_section_desktop.dart';
import 'package:reds_web_portfolio/all_sections/skills_section.dart';
import 'package:reds_web_portfolio/constants/colors.dart';
import 'package:reds_web_portfolio/all_sections/about_section_desktop.dart';
import 'package:reds_web_portfolio/widgets/drawer/drawer_mobile.dart';
import 'package:reds_web_portfolio/widgets/glowing_divider.dart';
import 'package:reds_web_portfolio/widgets/header_desktop.dart';
import 'package:reds_web_portfolio/widgets/header_mobile.dart';
import 'package:reds_web_portfolio/widgets/main_desktop.dart';
import 'package:reds_web_portfolio/widgets/main_mobile.dart';
import 'constants/responsive_size.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navBarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return LayoutBuilder(
        builder: (context, constraints) {
      return Scaffold(
        backgroundColor: WebsiteColors.darkBlack60,
        key: scaffoldKey,
        endDrawer: constraints.maxWidth >= kMinDesktopWidth
            ? null
            : DrawerMobile(
                onTapDrawerNavItem: (int navIndex) {
                  scaffoldKey.currentState?.closeEndDrawer();
                  scrollToSection(navIndex);
                },
              ),

        body: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            children: [
              SizedBox(key: navBarKeys.first),
              // MAIN
              if (constraints.maxWidth >= kMinDesktopWidth)
                Column(
                  children: [
                    const SizedBox(height: 10),
                    HeaderDesktop(
                      onTapNavMenuItem: (int navIndex) {
                        scrollToSection(navIndex);
                      },
                    ),
                  ],
                )
              else
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),

              if (constraints.maxWidth >= kMinDesktopWidth &&
                  constraints.maxWidth >= kMedDesktopWidth)
                 MainDesktop(onTapContactMe: (int navIndex) {
                   scrollToSection(3);
                 },)
              else
                const MainMobile(),

              const SizedBox(height: 42),

              const GlowingDivider(width: double.infinity),
              const SizedBox(height: 40),

              // ABOUT ME
              const AboutSectionDesktop(),

              const GlowingDivider(),
              const SizedBox(height: 40),

              // SKILLS Container
              SkillsSection(key: navBarKeys[1]),

              const GlowingDivider(),
              const SizedBox(height: 40),

              // PROJECTS
              ProjectsSectionDesktop(key: navBarKeys[2]),

              // EXPERIENCE
              // todo: add experience when you're pro experienced In Shaa Allah :)
              const GlowingDivider(),
              const SizedBox(height: 40),

              // Contact me
              ContactMeSection(key: navBarKeys[3]),

              const GlowingDivider(),
              const SizedBox(height: 40),

              // FOOTER
              const FooterSection(),
              const GlowingDivider(height: 20),
            ],
          ),
        ),
      );
    });
  }
  void scrollToSection(int navIndex) {
    final key = navBarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(microseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
