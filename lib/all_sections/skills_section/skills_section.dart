import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/responsive_size.dart';
import 'skill_desktop.dart';
import 'skill_mobile.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});


  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
          width: screenWidth,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Skills',
                style: GoogleFonts.sora(
                  fontWeight: FontWeight.bold,
                  fontSize: 70,
                  color: Colors.white,
                ),
              ),
              if (constraints.maxWidth >= kMinDesktopWidth)
                const SkillDesktop()
              else
                const SkillMobile(),
            ],
          ),
        );
      }
    );
  }
}
