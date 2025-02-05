import 'package:flutter/material.dart';
import 'package:reds_web_portfolio/widgets/custom_button.dart';

import '../constants/assets_path.dart';
import '../constants/colors.dart';
import 'main_desktop.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      // decoration: BoxDecoration(
      //   gradient: LinearGradient(
      //     colors: [
      //       Colors.transparent,
      //       Colors.redAccent.shade700,
      //     ],
      //     begin: Alignment.bottomCenter,
      //     end: Alignment.centerRight
      //   ),
      //   borderRadius: BorderRadius.circular(100),
      // ),
      constraints: const BoxConstraints(minHeight: 560),
      height: screenHeight / 1.2,
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 180,
            backgroundImage: AssetImage(AssetsPath.redsDp),
          ),
          const SizedBox(height: 8),
          RichText(
            text: TextSpan(
              children: [
                const TextSpan(
                  text: "I'm ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                  ),
                ),
                WidgetSpan(
                  alignment: PlaceholderAlignment.baseline,
                  baseline: TextBaseline.alphabetic,
                  child: GradientText(
                    'Redwan Ahmed',
                    gradient: LinearGradient(
                      colors: [
                        WebsiteColors.redsRed30,
                        Colors.white,
                      ], // Purple to white gradient
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    style: const TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'App Developer',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          const SizedBox(height: 32),
          SizedBox(
            width: 250,
            height: 48,
            child: CustomButton(
              height: 65,
                buttonName: 'Contact Me', onPressed: (){},)
          ),
        ],
      ),
    );
  }
}
