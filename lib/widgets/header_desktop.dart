import 'package:flutter/material.dart';
import 'package:reds_web_portfolio/widgets/site_logo.dart';

import '../constants/nav_items.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

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
            Colors.redAccent.shade700,
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
                border:
                Border.all(color: Colors.white.withOpacity(0.2)),
                borderRadius: BorderRadius.circular(100),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(0.4),
                      Colors.black.withOpacity(0.1),
                    ])),
          ),

          // child
          Center(
            child: Row(
              children: [
                const SizedBox(width: 15),
                SiteLogo(
                  onTap: (){}
                ),
                const Spacer(),
                for (int i = 0; i < navTitles.length; i++)
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        navTitles[i],
                        style: const TextStyle(
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