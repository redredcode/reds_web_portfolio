import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:universal_html/html.dart' as html;

class SiteLogoDesktop extends StatelessWidget {
  const SiteLogoDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        html.window.location.reload();
      },
      child: Text(
        'redredcode',
        style: GoogleFonts.sora(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.redAccent.shade700,
        ),
      ),
    );
  }
}
