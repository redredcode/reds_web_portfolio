import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reds_web_portfolio/widgets/site_logo.dart';

import '../constants/nav_items.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key, required this.onTapNavMenuItem,});

  final Function(int) onTapNavMenuItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      height: 60,
      width: double.maxFinite,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.transparent,
            Colors.redAccent.shade700.withOpacity(0.45),
          ],
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Stack(
        children: [
          // the blur effect
          // BackdropFilter(
          //   filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
          //   child: Container(),
          // ),

          // the gradient effect
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.redAccent.withOpacity(0.3)),
              borderRadius: BorderRadius.circular(100),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(0.4),
                  Colors.black.withOpacity(0.1),
                ],
              ),
            ),
          ),

          // child
          Center(
            child: Row(
              children: [
                const SizedBox(width: 70),
                const SiteLogo(),
                const Spacer(),
                for (int i = 0; i < navTitles.length; i++)
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: TextButton(
                      onPressed: () {
                        onTapNavMenuItem(i);
                      },
                      child: Text(
                        navTitles[i],
                        style: GoogleFonts.sora(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
