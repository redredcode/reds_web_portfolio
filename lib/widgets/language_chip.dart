import 'package:flutter/material.dart';

class LanguageChip extends StatelessWidget {
  const LanguageChip({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: Colors.transparent,
      shape: const StadiumBorder(),
      label: Text(
        label,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
