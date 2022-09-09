import 'package:flutter/material.dart';
import 'package:mall778/constants.dart';
import 'package:mall778/screens/cart/cart_screen.dart';
import '../../../size_config.dart';
import '../../../components/icon_btn_with_counter.dart';

class AllAppbar extends StatelessWidget {
final String title;
  const AllAppbar({
    Key? key,
    required this.title,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title,style:TextStyle(color: Colors.black)),
          ],
        ),
        actions: [
          IconBtnWithCounter(
            svgSrc: "assets/icons/Cart Icon.svg",
            press: () => Navigator.pushNamed(context, CartScreen.routeName),
          ),
        ],
      );
  }
}
