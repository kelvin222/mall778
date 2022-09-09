import 'package:flutter/material.dart';
import 'package:mall778/components/custom_bottom_nav_bar.dart';
import 'package:mall778/components/navigation_drawer.dart';
import 'package:mall778/enums.dart';
import 'package:mall778/screens/category/components/body.dart';
import 'package:mall778/screens/category/components/nestedlist.dart';


class CategoryScreen extends StatelessWidget {
  static String routeName = "/category";

  const CategoryScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      body: Body(),
      bottomNavigationBar: const CustomBottomNavBar(selectedMenu: MenuState.cate),
    );
  }
}
