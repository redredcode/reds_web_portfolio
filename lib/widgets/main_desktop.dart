import 'package:flutter/material.dart';

import '../constants/assets_path.dart';
import '../constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({
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
      constraints: const BoxConstraints(minHeight: 350),
      height: screenHeight / 1.2,
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
          const CircleAvatar(
            radius: 200,
            backgroundImage: AssetImage(AssetsPath.redsDp),
          ),
        ],
      ),
    );
  }
}

class GradientText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final Gradient gradient;

  const GradientText(
      this.text, {
        super.key,
        required this.gradient,
        required this.style,
      });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
        text,
        style: style,
      ),
    );
  }
}

