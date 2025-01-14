import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reds_web_portfolio/constants/colors.dart';
import 'package:reds_web_portfolio/widgets/all_sections/projects_section.dart';
import 'package:reds_web_portfolio/widgets/custom_button.dart';
import 'package:reds_web_portfolio/widgets/drawer/drawer_mobile.dart';
import 'package:reds_web_portfolio/widgets/glowing_divider.dart';
import 'package:reds_web_portfolio/widgets/header_desktop.dart';
import 'package:reds_web_portfolio/widgets/header_mobile.dart';
import 'package:reds_web_portfolio/widgets/main_desktop.dart';
import 'package:reds_web_portfolio/widgets/main_mobile.dart';
import 'package:reds_web_portfolio/widgets/skill_desktop.dart';
import 'package:reds_web_portfolio/widgets/skill_mobile.dart';
import 'constants/responsive_size.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: WebsiteColors.darkBlack60,
        key: scaffoldKey,
        endDrawer: constraints.maxWidth >= kMinDesktopWidth
            ? null
            : const DrawerMobile(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            // MAIN
            if (constraints.maxWidth >= kMinDesktopWidth)
              const HeaderDesktop()
            else
              HeaderMobile(
                onLogoTap: () {},
                onMenuTap: () {
                  scaffoldKey.currentState?.openEndDrawer();
                },
              ),

            if (constraints.maxWidth >= kMinDesktopWidth &&
                constraints.maxWidth >= kMedDesktopWidth)
              const MainDesktop()
            else
              const MainMobile(),

            const SizedBox(
              height: 52,
            ),

            const GlowingDivider(),
            const SizedBox(height: 40),

            // ABOUT ME
            Container(
              height: 300,
              width: double.maxFinite,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.only(left: 60, right: 50),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        'About Me',
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.bold,
                          fontSize: 90,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'I\'m a Flutter developer based in Bangladesh. 🇧🇩',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          RichText(
                            text: const TextSpan(
                              style: TextStyle(
                                fontSize: 18,
                                height: 1.5,
                                color: Colors.white,
                              ),
                              children: [
                                TextSpan(
                                    text:
                                    "I have specialization in Flutter, with expertise in state management, API integration, and data management. ",
                                    style: TextStyle(
                                        color: Colors.white70
                                    )
                                ),
                                TextSpan(
                                  text:
                                  "Passionate about building seamless, user-friendly mobile applications that solve real-world challenges.",
                                  style: TextStyle(
                                    color: Color(0xFFFFC107), // Yellow highlight
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                    text:
                                    " I thrive in collaborative environments and am committed to delivering high-quality solutions on time. As an eager learner, I continuously strive to enhance my skills and am excited to contribute to innovative teams and tackle impactful projects. Courageous to learn new things for the sake of projects.",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    )
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    //const SizedBox(height: 18),
                    // Center(
                    //   child: CustomButton(
                    //     buttonName: 'Download CV',
                    //     onPressed: () {},
                    //     width: 300,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),

            const GlowingDivider(),
            const SizedBox(height: 40),

            // TODO: complete the about section

            // SKILL

            // SKILLS
            Container(
              padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
              //key: ,
              width: screenWidth,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Skills',
                    style: GoogleFonts.sora(
                      fontWeight: FontWeight.bold,
                      fontSize: 90,
                      color: Colors.white,
                    ),
                  ),
                  if (constraints.maxWidth >= kMinDesktopWidth)
                    const SkillDesktop()
                  else
                    const SkillMobile(),
                ],
              ),
            ),

            const GlowingDivider(),
            const SizedBox(height: 40),

            const SizedBox(height: 50),

            const ProjectsSection(),

            // PROJECTS
            // Container(
            //   padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
            //   //width: double.maxFinite,
            //   width: screenWidth,
            //   color: Colors.black,
            //   child: Column(
            //     children: [
            //       Text(
            //           'Projects',
            //         style: GoogleFonts.sora(
            //           fontWeight: FontWeight.bold,
            //           fontSize: 50,
            //           color: Colors.white,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),

            // TODO: Complete the experience section

            // EXPERIENCE
            // Container(
            //   height: 500,
            //   width: double.maxFinite,
            //   color: Colors.black,
            //   child: const Column(
            //     children: [
            //       Text(
            //         'Experience',
            //         style: TextStyle(
            //           fontWeight: FontWeight.bold,
            //           fontSize: 40,
            //           color: Colors.white,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),

            // CONTACT

            const GlowingDivider(),
            const SizedBox(height: 40),

            // Contact me
            Container(
              height: 900,
              width: double.maxFinite,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text(
                      // zenDots,
                      'Contact me',
                      style: GoogleFonts.sora(
                        fontWeight: FontWeight.bold,
                        fontSize: 90,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      width: 600,
                      child: Column(
                        children: [
                          // name
                          const Row(
                            children: [
                              SizedBox(width: 20),
                              Text(
                                'Full name *',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: 'Enter your full name',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                contentPadding:
                                    const EdgeInsets.only(left: 20)),
                          ),
                          const SizedBox(height: 18),

                          // email
                          const Row(
                            children: [
                              SizedBox(width: 20),
                              Text(
                                'Email *',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Enter your email',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              contentPadding: const EdgeInsets.only(left: 20),
                            ),
                          ),
                          const SizedBox(height: 18),

                          // msg
                          const Row(
                            children: [
                              SizedBox(width: 20),
                              Text(
                                'Message*',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          TextFormField(
                            maxLines: 5,
                            decoration: InputDecoration(
                              hintText: 'Message',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              contentPadding:
                                  const EdgeInsets.only(left: 20, top: 25),
                            ),
                          ),
                          const SizedBox(height: 18),
                          CustomButton(buttonName: 'Submit', onPressed: () {})
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const GlowingDivider(),
            const SizedBox(height: 40),

            // FOOTER
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '"Thanks for Scrolling!"',
                    style: GoogleFonts.sora(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
