import 'package:flutter/material.dart';
import 'package:mall778/components/custom_bottom_nav_bar.dart';
import 'package:mall778/components/navigation_drawer.dart';
import 'package:mall778/enums.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
