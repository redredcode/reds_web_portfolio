import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/nav_items.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({
    super.key, required this.onTapDrawerNavItem,
  });

  final Function(int) onTapDrawerNavItem;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close),
              ),
            ),
          ),
          for (int i = 0; i < navIcons.length; i++)
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 30),
              titleTextStyle: GoogleFonts.sora(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
              onTap: () {
                onTapDrawerNavItem(i);
              },
              leading: Icon(navIcons[i]),
              title: Text(navTitles[i], style: GoogleFonts.sora()),
            )
        ],
      ),
    );
  }
}
