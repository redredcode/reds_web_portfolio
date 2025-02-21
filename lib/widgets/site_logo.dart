import 'package:flutter/material.dart';

import '../utils/site_launcher.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key,});

  

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){SiteLauncher.launchUrl('https://redredcode.vercel.app/');},
      child: Text(
        'redredcode',
        //'Redwan\nAhmed\nFahim',
        style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.redAccent.shade700),
      ),
    );
  }

}