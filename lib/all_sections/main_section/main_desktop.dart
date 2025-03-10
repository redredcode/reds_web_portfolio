import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reds_web_portfolio/widgets/buttons/custom_button.dart';
import '../../constants/assets_path.dart';
import '../../constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({
    super.key, required this.onTapContactMe,
  });

  final Function(int) onTapContactMe;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;
    return Container(
      constraints: const BoxConstraints(minHeight: 350),
      height: screenHeight / 1.2,
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // name, title and the button
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildRichTextName(),
              const SizedBox(height: 5),
              const Text(
                'Flutter App Developer',
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(height: 30),
              CustomButton(
                buttonName: 'Contact Me',
                onPressed: (){onTapContactMe(3);},
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

  Widget buildRichTextName() {
    return RichText(
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
                      style: GoogleFonts.sora(
                        fontSize: 56,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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

