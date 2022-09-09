import 'package:flutter/material.dart';
import 'package:mall778/components/icon_btn_with_counter.dart';
import 'package:mall778/constants.dart';
import 'package:mall778/screens/cart/cart_screen.dart';

import '../../../size_config.dart';


class MidHeader extends StatelessWidget {
  const MidHeader({
    Key? key,
    required this.category,
  }) : super(key: key);

  final String category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
        Text(
          category,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.black,
          ),
        ),
           const Icon(Icons.filter_list_outlined)
        ],
      )
    );
  }
}


