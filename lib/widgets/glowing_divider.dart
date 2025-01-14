import 'package:flutter/material.dart';

class GlowingDivider extends StatelessWidget {
  final double width;

  const GlowingDivider({super.key, this.width = 200});

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.only(top: 40, bottom: 40),
      width: width,
      height: 4,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.red.withOpacity(0.8),
            blurRadius: 20,
            spreadRadius: 3,
          ),
        ],
      ),
    );
  }
}
