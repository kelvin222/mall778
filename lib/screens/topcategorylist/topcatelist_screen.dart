import 'package:flutter/material.dart';
import 'package:mall778/components/navigation_drawer.dart';
import 'package:mall778/models/topcat.dart';

import 'components/body.dart';

class TopCateScreen extends StatelessWidget {
  static String routeName = "/topcatelist";

  @override
  Widget build(BuildContext context) {
    final TopCateArguments agrs =
        ModalRoute.of(context)!.settings.arguments as TopCateArguments;
    return Scaffold(
      drawer: const NavigationDrawer(),
      body: Body(catename: agrs.catename, newTop:agrs.newTop),
    );
  }
}

class TopCateArguments {
  final String catename;
  final List<TopCat> newTop;

  TopCateArguments({required this.catename, required this.newTop});
}
