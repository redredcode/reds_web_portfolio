import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/projects_utils.dart';
import '../../widgets/project_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: [
          // Work projects title
          Text(
            "Projects",
            style: GoogleFonts.sora(
              fontSize: 90,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 50),
          // Work projects cards
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < workProjectUtils.length; i++)
                  ProjectCardWidget(
                    project: workProjectUtils[i],
                  ),
              ],
            ),
          ),
          const SizedBox(height: 80),


          // Hobby projects title
          // const Text(
          //   "Hobby projects",
          //   style: TextStyle(
          //     fontSize: 24,
          //     fontWeight: FontWeight.bold,
          //     color: Colors.white,
          //   ),
          // ),
          // const SizedBox(height: 50),

          // // Hobby projects cards
          // ConstrainedBox(
          //   constraints: const BoxConstraints(maxWidth: 900),
          //   child: Wrap(
          //     spacing: 25,
          //     runSpacing: 25,
          //     children: [
          //       for (int i = 0; i < hobbyProjectUtils.length; i++)
          //         ProjectCardWidget(
          //           project: hobbyProjectUtils[i],
          //         ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}