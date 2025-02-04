import 'package:flutter/material.dart';

class LanguageContainer extends StatelessWidget {
  final String title;
  final String imagePath;

  const LanguageContainer({
    super.key,
    required this.title,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // logo
          Image.asset(
            imagePath,
            width: 60,
            height: 60,
          ),
          const SizedBox(height: 12),
          // Title text
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
