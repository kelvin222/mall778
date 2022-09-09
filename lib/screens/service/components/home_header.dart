import 'package:flutter/material.dart';
import 'package:mall778/constants.dart';
import 'package:mall778/screens/cart/cart_screen.dart';

import '../../../size_config.dart';
import '../../../components/icon_btn_with_counter.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      child: Column(
        children: [
      SizedBox(height: getProportionateScreenHeight(5)),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SearchField()
        ],
      )
        ],
      )
    );
  }
}
