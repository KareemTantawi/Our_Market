import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:our_market/core/app_colors.dart';
import 'package:our_market/views/favorite/ui/favorite_view.dart';
import 'package:our_market/views/home/ui/home_view.dart';
import 'package:our_market/views/nav_bar/logic/cubit/nav_bar_cubit.dart';
import 'package:our_market/views/nav_bar/logic/cubit/nav_bar_state.dart';
import 'package:our_market/views/profile/ui/profile_view.dart';
import 'package:our_market/views/store/ui/store_view.dart';

class MainHomeView extends StatelessWidget {
  MainHomeView({super.key});
  final List<Widget> views = [
    HomeView(),
    StoreView(),
    FavoriteView(),
    ProfileView()
  ];
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavBarCubit(),
      child: BlocBuilder<NavBarCubit, NavBarState>(
        builder: (context, state) {
          NavBarCubit cubit = context.read<NavBarCubit>();
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: views[cubit.currentIndex],
              ),
            ),
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: GNav(
                    onTabChange: (index) {
                      cubit.changedCurrentIndex(index);
                    },
                    // selectedIndex: 2,
                    rippleColor: AppColors
                        .kPrimaryColor, // tab button ripple color when pressed
                    hoverColor:
                        AppColors.kPrimaryColor, // tab button hover color
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
                    duration:
                        Duration(milliseconds: 400), // tab animation duration
                    gap: 8, // the tab button gap between icon and text
                    color: Colors.grey, // unselected icon color
                    activeColor: Colors.white, // selected icon and text color
                    iconSize: 24, // tab button icon size
                    tabBackgroundColor: AppColors
                        .kPrimaryColor, // selected tab background color
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
        },
      ),
    );
  }
}
