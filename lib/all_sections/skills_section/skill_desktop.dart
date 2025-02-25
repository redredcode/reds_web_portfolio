import 'package:flutter/material.dart';
import 'package:reds_web_portfolio/widgets/language_container.dart';
import 'package:reds_web_portfolio/all_sections/skills_section/skill_card.dart';

import '../../constants/assets_path.dart';
import '../../constants/skill_items.dart';

class SkillDesktop extends StatefulWidget {
  const SkillDesktop({super.key});

  @override
  State<SkillDesktop> createState() => _SkillDesktopState();
}

class _SkillDesktopState extends State<SkillDesktop> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      width: screenWidth,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Wrap(
                spacing: 20,
                children: [
                  Container(
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          LanguageContainer(
                            title: 'Flutter',
                            imagePath: AssetsPath.flutter,
                          ),
                          SizedBox(height: 8),
                          LanguageContainer(
                            title: 'Dart',
                            imagePath: AssetsPath.dart,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SkillCard(
                    title: 'Mobile Development',
                    skills: mobileDevSkills,
                  ),
                  SkillCard(
                    title: 'Tools & DevOps',
                    skills: toolsAndDevOpsSkills,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
