import 'package:flutter/material.dart';
import 'package:mall778/components/custom_bottom_nav_bar.dart';
import 'package:mall778/enums.dart';

import '../../components/navigation_drawer.dart';
import 'components/body.dart';

class ChatScreen extends StatelessWidget {
  static String routeName = "/chat";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      body: Body(),
      bottomNavigationBar: const CustomBottomNavBar(selectedMenu: MenuState.chat),
    );
  }
}
