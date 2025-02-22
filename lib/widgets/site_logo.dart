import 'package:flutter/material.dart';
import 'dart:html' as html;

import 'package:google_fonts/google_fonts.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key,});

  

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        html.window.location.reload();
      },
      child: Text(
        'redredcode',
        //'Redwan\nAhmed\nFahim',
        style: GoogleFonts.sora(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.redAccent.shade700),
      ),
    );
  }

}