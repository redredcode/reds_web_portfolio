import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/assets_path.dart';
import '../buttons/external_link_button.dart';
import '../frosted_glass.dart';
import '../language_chip.dart';

class MobileProjectTileRow extends StatelessWidget {
  const MobileProjectTileRow({
    super.key,
    required this.projectName,
    required this.projectDescription,
    required this.imagePath,
    required this.onTapLiveDemo,
    required this.onTapGithub,
  });

  final String projectName;
  final String projectDescription;
  final String imagePath;
  final VoidCallback onTapLiveDemo;
  final VoidCallback onTapGithub;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.white.withOpacity(0.3), width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Container(
          //   width: 700,
          //   height: 300,
          //   padding: const EdgeInsets.all(20),
          //   decoration: BoxDecoration(
          //     border: Border.all(
          //       color: Colors.green, width: 1,
          //     ),
          //     color: Colors.black,
          //   ),
          //   child: Stack(
          //     children: [
          //       // glowing effect
          //         Positioned(
          //           left: 20,
          //           bottom: 10,
          //           child: Container(
          //             width: 100,
          //             height: 100,
          //             decoration: BoxDecoration(
          //               shape: BoxShape.circle,
          //               gradient: RadialGradient(colors: [
          //                 Colors.green.withOpacity(0.5),
          //                 Colors.transparent
          //               ], radius: 0.7,),
          //             ),
          //           ),
          //         ),
          //
          //         Row(
          //           children: [
          //             Column(
          //               children: [
          //
          //               ],
          //             ),
          //
          //             // image
          //             Column(
          //               children: [
          //
          //               ],
          //             ),
          //           ],
          //         )
          //     ],
          //   )
          // ),
          // project img
          // image section
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              height: 180,
            ),
          ),

          const SizedBox(width: 40),

          // name+desc
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Project name
                Text(
                  projectName,
                  style: GoogleFonts.sora(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 10),

                // project description
                Text(
                  projectDescription,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    //fontSize: 18,
                  ),
                ),

                const SizedBox(height: 10),

                // language chip
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 12),
                    LanguageChip(label: 'Flutter'),
                    SizedBox(width: 8),
                    LanguageChip(label: 'Dart')
                  ],
                ),
                const SizedBox(height: 12),
                const SizedBox(height: 10),

                // External links buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ExternalLinkButton(
                      label: 'LIVE DEMO',
                      imageIconPath: null,
                      onPressed: onTapLiveDemo,
                      icon: Icons.open_in_new,
                    ),
                    const SizedBox(width: 15),
                    ExternalLinkButton(
                      label: 'GITHUB',
                      imageIconPath: AssetsPath.gitHub,
                      onPressed: onTapGithub,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
