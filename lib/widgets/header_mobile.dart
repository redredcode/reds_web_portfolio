import 'package:flutter/material.dart';
import 'package:reds_web_portfolio/widgets/site_logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});

  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

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
          buildGradientEffect(),

          // child
          Center(
            child: Row(
              children: [
                const SizedBox(width: 40),
                SiteLogo(onTap: onLogoTap),
                const Spacer(),
                IconButton(
                  onPressed: onMenuTap,
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 15,
                )
                // for (int i = 0; i < navTitles.length; i++)
                //   Padding(
                //     padding: const EdgeInsets.only(right: 20),
                //     child: TextButton(
                //       onPressed: () {},
                //       child: Text(
                //         navTitles[i],
                //         style: const TextStyle(
                //             fontWeight: FontWeight.w500,
                //             fontSize: 16,
                //             color: Colors.white),
                //       ),
                //     ),
                //   ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container buildGradientEffect() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white.withOpacity(0.2)),
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
    );
  }
}
