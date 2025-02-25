import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/assets_path.dart';
import '../buttons/external_link_button.dart';
import '../frosted_glass.dart';
import '../language_chip.dart';

class RightProjectTileRow extends StatelessWidget {
  const RightProjectTileRow({super.key, required this.projectName, required this.projectDescription, required this.imagePath, required this.onTapLiveDemo, required this.onTapGithub});

  final String projectName;
  final String projectDescription;
  final String imagePath;
  final VoidCallback onTapLiveDemo;
  final VoidCallback onTapGithub;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        // name+desc
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            // Project name
            Text(
              projectName,
              style: GoogleFonts.sora(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            // project description
            FrostedGlass(
              borderRadius: 8,
              width: 400,
              height: 250,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      margin: const EdgeInsets.all(8.0),
                      child: Text(
                       projectDescription,

                        style: const TextStyle(color: Colors.white,),
                      ),
                    ),
                  ),

                  // language chip
                  const Row(
                    children: [
                      SizedBox(width: 12),
                      LanguageChip(label: 'Flutter'),
                      SizedBox(width: 8),
                      LanguageChip(label: 'Dart')
                    ],
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ),
            const SizedBox(height: 10),
            // External links buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ExternalLinkButton(label: 'LIVE DEMO', imageIconPath: null, onPressed: onTapLiveDemo, icon: Icons.open_in_new,),
                const SizedBox(width: 15),
                ExternalLinkButton(label: 'GITHUB', imageIconPath: AssetsPath.gitHub, onPressed: onTapGithub, ),
              ],
            ),
          ],
        ),

        const SizedBox(width: 40),

        // project img
        Container(
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(12),
          ),
          clipBehavior: Clip.antiAlias,
          height: 360,
          width: 600,
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),


      ],
    );
  }
}
