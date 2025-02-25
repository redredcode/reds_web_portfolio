import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reds_web_portfolio/utils/site_launcher.dart';
import '../../constants/assets_path.dart';
import '../../constants/project_descriptions.dart';
import '../../utils/urls.dart';
import '../../widgets/project_tiles/mobile_project_tile_row.dart';
import '../../widgets/project_tiles/project_tile_row.dart';
import '../../widgets/project_tiles/right_project_tile_row.dart';

class ProjectsSectionMobile extends StatelessWidget {
  const ProjectsSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      //width: double.maxFinite,
      width: screenWidth,
      height: screenHeight/0.47,
      //color: Colors.black,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Featured Projects',
            style: GoogleFonts.sora(
              fontWeight: FontWeight.bold,
              fontSize: 60,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          MobileProjectTileRow(
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

          const SizedBox(height: 50),
          MobileProjectTileRow(
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
          const SizedBox(height: 50),
          MobileProjectTileRow(
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
