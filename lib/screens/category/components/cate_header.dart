import 'package:flutter/material.dart';
import 'package:mall778/components/icon_btn_with_counter.dart';
import 'package:mall778/constants.dart';
import 'package:mall778/screens/cart/cart_screen.dart';

import '../../../size_config.dart';


class CateHeader extends StatelessWidget {
  const CateHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: getProportionateScreenHeight(5)),
          Text(
          "Categories",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(20),
            color: kTextColor,
            fontWeight: FontWeight.w200,
          ),
        ),
        ],
      )
    );
  }
}
