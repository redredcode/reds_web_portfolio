import 'package:flutter/material.dart';
import 'package:reds_web_portfolio/all_sections/skills_section/skill_card.dart';

import '../../constants/assets_path.dart';
import '../../constants/skill_items.dart';

class SkillMobile extends StatelessWidget {
  const SkillMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;


    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 150,
            decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Wrap(
              children: [
                ListTile(
                  leading: Image.asset(AssetsPath.flutter),
                  title: const Text('Flutter'),
                ),
                ListTile(
                  leading: Image.asset(AssetsPath.dart),
                  title: const Text('Dart'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          SkillCard(title: 'Mobile Development', skills: mobileDevSkills,),
          const SizedBox(height: 12),
          SkillCard(title: 'Tools & DevOps', skills: toolsAndDevOpsSkills,)
        ],
      ),
    );
  }
}
