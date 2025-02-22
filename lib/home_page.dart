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

  double lastScrollOffset = 0;
  bool isHeaderVisible = true;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(_handleScroll);
  }

  void _handleScroll() {
    if (scrollController.offset > lastScrollOffset && isHeaderVisible) {
      setState(() => isHeaderVisible = false);
    } else if (scrollController.offset < lastScrollOffset && !isHeaderVisible) {
      setState(() => isHeaderVisible = true);
    }
    lastScrollOffset = scrollController.offset;
  }

  @override
  void dispose() {
    scrollController.removeListener(_handleScroll);
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return LayoutBuilder(builder: (context, constraints) {
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

        body: Stack(
          children: [
            SingleChildScrollView(
              controller: scrollController,
              child: Column(
                children: [
                  SizedBox(key: navBarKeys.first),
                  // MAIN
                  const SizedBox(height: 70),

                  if (constraints.maxWidth >= kMinDesktopWidth &&
                      constraints.maxWidth >= kMedDesktopWidth)
                    MainDesktop(
                      onTapContactMe: (int navIndex) {
                        scrollToSection(3);
                      },
                    )
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

            // Header with Hide/Show animation
          AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              top: isHeaderVisible ? 12 : -80,
              left: 0,
              right: 0,
            child: constraints.maxWidth >= kMinDesktopWidth
                ? HeaderDesktop(
              onTapNavMenuItem: (int navIndex) {
                scrollToSection(navIndex);
              },
            )
                : HeaderMobile(
              onLogoTap: () {},
              onMenuTap: () {
                scaffoldKey.currentState?.openEndDrawer();
              },
            ),


            ),
          ],
        ),
      );
    });
  }

  void scrollToSection(int navIndex) {
    final key = navBarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
