import 'package:flutter/material.dart';
import 'package:mall778/constants.dart';
import 'package:mall778/screens/cart/cart_screen.dart';

import '../../../size_config.dart';
import '../../../components/icon_btn_with_counter.dart';

class GenHeader extends StatelessWidget {
  const GenHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      child: Column(
        children: [
          Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconBtnWithCounter(
            svgSrc: "assets/icons/menu.svg",
            press: (){
                  Scaffold.of(context).openDrawer();
                }
          ),
        Text(
          "Mall778",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(20),
            color: kPrimaryColor,
            fontWeight: FontWeight.w400,
          ),
        ),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Cart Icon.svg",
            press: () => Navigator.pushNamed(context, CartScreen.routeName),
          ),
        ],
      ),
        ],
      )
    );
  }
}
