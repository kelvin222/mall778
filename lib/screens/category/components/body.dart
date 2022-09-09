import 'package:flutter/material.dart';
import 'package:mall778/components/gen_header.dart';
import 'package:mall778/screens/category/components/cate_header.dart';
import 'package:mall778/screens/category/components/nestedlist.dart';
import 'package:mall778/size_config.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(5)),
            GenHeader(),
            CateHeader(),
            SizedBox(height: getProportionateScreenHeight(20)),
            NestedList(),
          ],
        ),
      ),
    );
  }
}
