import 'package:flutter/material.dart';
import 'package:mall778/components/all_appbar.dart';
import 'package:mall778/components/navigation_drawer.dart';

import '../../models/Product.dart';
import 'components/body.dart';
import 'components/custom_app_bar.dart';

class CatelistScreen extends StatelessWidget {
  static String routeName = "/catelist";

  @override
  Widget build(BuildContext context) {
    final CateListArguments agrs =
        ModalRoute.of(context)!.settings.arguments as CateListArguments;
    return Scaffold(
      drawer: const NavigationDrawer(),
      body: Body(category: agrs.category),
    );
  }
}

class CateListArguments {
  final String category;

  CateListArguments({required this.category});
}
