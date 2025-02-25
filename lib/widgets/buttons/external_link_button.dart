import 'package:flutter/material.dart';
import 'package:reds_web_portfolio/constants/colors.dart';

class ExternalLinkButton extends StatelessWidget {
  const ExternalLinkButton({
    super.key,
    required this.label,
    this.icon,
    required this.imageIconPath,
    required this.onPressed,
  });

  final String label;
  final IconData? icon;
  final String? imageIconPath;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Row(
        children: [
          Text(
            label,
            style: TextStyle(
              color: Colors.lightGreen.shade400,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          const SizedBox(width: 5),
          if (icon != null)
            Icon(
              icon,
              color: WebsiteColors.lightGreen400,
            )
          else if (imageIconPath != null)
            Image.asset(imageIconPath!, height: 30, width: 30,)

        ],
      ),
    );
  }
}
