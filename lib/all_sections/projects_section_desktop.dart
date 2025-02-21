import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reds_web_portfolio/utils/site_launcher.dart';
import '../constants/assets_path.dart';
import '../constants/project_descriptions.dart';
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
            ProjectDescriptions.taskManagerAppDescription,
            imagePath: AssetsPath.taskManagerAppDemoPng,
            onTapLiveDemo: () {
              SiteLauncher.launchUrl(Urls.tmAppLiveDemo);
            },
            onTapGithub: () {
              SiteLauncher.launchUrl(Urls.tmAppGithubLink);
            },
          ),

          const SizedBox(height: 90),
          RightProjectTileRow(
            projectName: 'E Commerce App',
            projectDescription:
            ProjectDescriptions.ecommerceAppDescription,
            imagePath: AssetsPath.eCommAppDemoPng,
            onTapLiveDemo: () {},
            onTapGithub: ()
            {
              SiteLauncher.launchUrl(Urls.eCommerceAppGithubLink);
            },
          ),
          const SizedBox(height: 90),
          ProjectTileRow(
              projectName: 'Portfolio with Flutter Web',
              projectDescription: ProjectDescriptions.portfolioAppDescription,
              imagePath: AssetsPath.webPortfolioDemoPng,
              onTapLiveDemo: () {},
              onTapGithub: () {
                SiteLauncher.launchUrl(Urls.webPortfolioGithubLink);
              }),
        ],
      ),
    );
  }
}
