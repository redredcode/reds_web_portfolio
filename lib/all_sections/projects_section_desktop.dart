import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../constants/assets_path.dart';
import '../utils/urls.dart';
import '../widgets/project_tile_row.dart';
import '../widgets/right_project_tile_row.dart';

class ProjectsSectionDesktop extends StatelessWidget {
  const ProjectsSectionDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return Container(
      padding: const EdgeInsets.fromLTRB(100, 20, 100, 60),
      //width: double.maxFinite,
      width: screenWidth,
      //color: Colors.black,
      child: Column(
        children: [
          Text(
            'Featured Projects',
            style: GoogleFonts.sora(
              fontWeight: FontWeight.bold,
              fontSize: 90,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          ProjectTileRow(
            projectName: 'Task Manager App',
            projectDescription:
            'Lorem ipsum dolar en summit ldjkfajd  ajsdfljasdl ladjf ladf lj asldfjk ladkjf ljaldfj dfljadk',
            imagePath: AssetsPath.taskManagerAppDemoPng,
            onTapLiveDemo: () {
              launchUrl(Urls.tmAppLiveDemo);
            },
            onTapGithub: () {
              launchUrl(Urls.tmAppGithubLink);
            },
          ),

          const SizedBox(height: 90),
          RightProjectTileRow(
            projectName: 'E Commerce App',
            projectDescription:
            'An e commerce app for buying Lorem ipsum dolar en summit ldjkfajd  ajsdfljasdl ladjf ladf lj asldfjk ladkjf ljaldfj dfljadk',
            imagePath: AssetsPath.eCommAppDemoPng,
            onTapLiveDemo: () {},
            onTapGithub: ()
            {
              launchUrl(Urls.eCommerceAppGithubLink);
            },
          )
        ],
      ),
    );
  }

  void launchUrl(String url) async {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch URL';
    }
  }
}
