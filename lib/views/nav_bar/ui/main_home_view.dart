import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:our_market/core/app_colors.dart';

class MainHomeView extends StatelessWidget {
  const MainHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Text('Main Home View'),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: GNav(
              rippleColor: AppColors
                  .kPrimaryColor, // tab button ripple color when pressed
              hoverColor: AppColors.kPrimaryColor, // tab button hover color
              // haptic: true, // haptic feedback
              // tabBorderRadius: 15,
              // tabActiveBorder:
              //     Border.all(color: Colors.black, width: 1), // tab button border
              // tabBorder:
              //     Border.all(color: Colors.grey, width: 1), // tab button border
              // tabShadow: [
              //   BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)
              // ], // tab button shadow
              // curve: Curves.easeOutExpo, // tab animation curves
              duration: Duration(milliseconds: 400), // tab animation duration
              gap: 8, // the tab button gap between icon and text
              color: Colors.grey, // unselected icon color
              activeColor: Colors.white, // selected icon and text color
              iconSize: 24, // tab button icon size
              tabBackgroundColor:
                  AppColors.kPrimaryColor, // selected tab background color
              padding: EdgeInsets.symmetric(
                  horizontal: 16, vertical: 12), // navigation bar padding
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.store,
                  text: 'Store',
                ),
                GButton(
                  icon: Icons.favorite,
                  text: 'Favorite',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',
                )
              ]),
        ),
      ),
    );
  }
}
