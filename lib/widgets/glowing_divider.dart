import 'package:flutter/material.dart';

class GlowingDivider extends StatelessWidget {
  final double width;
  final double height;

  const GlowingDivider({super.key, this.width = double.infinity, this.height =4});

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.only(top: 40, bottom: 40),
      width: width,
      height: height,
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
