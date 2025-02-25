import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reds_web_portfolio/constants/assets_path.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.maxFinite,
      color: Colors.black,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '"Thanks for Scrolling!"',
                style: GoogleFonts.sora(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '© All Rights Reserved. \nDesigned and Developed by Redwan Ahmed',
                textAlign: TextAlign.center,
                style: GoogleFonts.sora(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
