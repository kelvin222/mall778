import 'package:flutter/material.dart';
import 'package:mall778/components/navigation_drawer.dart';
import 'package:mall778/models/topcat.dart';

import 'components/body.dart';

class StoreAroundScreen extends StatelessWidget {
  static String routeName = "/storearoundlist";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: NavigationDrawer(),
      body: Body(),
    );
  }
}
