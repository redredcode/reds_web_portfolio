import 'package:flutter/material.dart';
import 'package:reds_web_portfolio/constants/colors.dart';
import 'package:reds_web_portfolio/widgets/drawer_mobile.dart';
import 'package:reds_web_portfolio/widgets/header_desktop.dart';
import 'package:reds_web_portfolio/widgets/header_mobile.dart';
import 'package:reds_web_portfolio/widgets/main_desktop.dart';
import 'package:reds_web_portfolio/widgets/main_mobile.dart';
import 'constants/assets_path.dart';
import 'constants/responsive_size.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: WebsiteColors.darkBlack60,
        // appBar: AppBar(
        //   actions: [
        //     Row( mainAxisAlignment: MainAxisAlignment.end,
        //       children: [
        //         Text('Redwan\nAhmed\nFahim'),
        //         Row(
        //           children: [
        //             Text('Home'),
        //             Text('Projects'),
        //             Text('Contact'),
        //           ],
        //         )
        //       ],
        //     )
        //   ],
        //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // ),
        key: scaffoldKey,
        endDrawer: constraints.maxWidth >= kMinDesktopWidth
            ? null
            : const DrawerMobile(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            // MAIN
            if (constraints.maxWidth >= kMinDesktopWidth)
              const HeaderDesktop()
            else
              HeaderMobile(
                onLogoTap: () {},
                onMenuTap: () {
                  scaffoldKey.currentState?.openEndDrawer();
                },
              ),

            if (constraints.maxWidth >= kMinDesktopWidth)
              const MainDesktop()
            else
              const MainMobile(),

            // SKILL
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.black,
            ),

            // PROJECTS
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.black,
            ),

            // CONTACT
            Container(
              height: 500,
              width: double.maxFinite,
              //color: Colors.black,
            ),

            // FOOTER
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.black,
            ),
          ],
        ),
      );
    });
  }
}



