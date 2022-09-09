import 'package:flutter/material.dart';
import 'package:mall778/components/custom_bottom_nav_bar.dart';
import 'package:mall778/components/navigation_drawer.dart';
import 'package:mall778/enums.dart';

import 'components/body.dart';

class OptionScreen extends StatelessWidget {
  static String routeName = "/option";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      body: Body(),
    );
  }
}
