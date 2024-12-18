import 'package:flutter/material.dart';

import '../constants/assets_path.dart';
import '../constants/colors.dart';

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
                TextSpan(
                  text: 'Redwan Ahmed',
                  style: TextStyle(
                    color: WebsiteColors.redsRed30,
                    fontSize: 45,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'App Developer',
            style: TextStyle(fontSize: 30),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: 250,
            height: 48,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: WebsiteColors.redsRed30,
                //Colors.green.shade900,
                foregroundColor: Colors.white,
              ),
              child: const Text(
                'Contact Me',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
