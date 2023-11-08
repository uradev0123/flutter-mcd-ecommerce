import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mcd_ecommerce/app/pages/history_page/history_page_view.dart';
import 'package:flutter_mcd_ecommerce/app/pages/home_page/home_page_view.dart';
import 'package:flutter_mcd_ecommerce/app/pages/menu_page/menu_page_view.dart';
import 'package:flutter_mcd_ecommerce/app/pages/profile_page/profile_page_view.dart';
import 'package:flutter_mcd_ecommerce/common/helper/themes.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class Navbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;

    _controller = PersistentTabController(initialIndex: 0);

    List<Widget> _buildScreens() {
      return [
        HomePageView(),
        MenuPageView(),
        HistoryPageView(),
        ProfilePageView(),
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: Icon(Icons.home_filled),
          title: ("Home"),
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.fastfood),
          title: ("Menu"),
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.history_edu),
          title: ("History"),
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.person),
          title: ("Profile"),
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
      ];
    }

    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties( // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style3, // Choose the nav bar style with this property.
    );
  }
}
