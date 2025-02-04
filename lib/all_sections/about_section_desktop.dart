import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class AboutSectionDesktop extends StatelessWidget {
  const AboutSectionDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    text: TextSpan(
                      style: const TextStyle(
                        fontSize: 18,
                        height: 1.5,
                        color: Colors.white,
                      ),
                      children: [
                        const TextSpan(
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
                            color: WebsiteColors.lightGreen400, // Green highlighted text
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const TextSpan(
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
    );
  }
}
