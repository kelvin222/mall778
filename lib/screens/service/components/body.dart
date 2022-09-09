import 'package:flutter/material.dart';
import 'package:mall778/components/gen_header.dart';
import 'package:mall778/screens/home/components/bb_product.dart';
import 'package:mall778/screens/home/components/electronic_product.dart';
import 'package:mall778/screens/home/components/headslide.dart';
import 'package:mall778/screens/home/components/mf_product.dart';
import 'package:mall778/screens/home/components/pg_product.dart';
import 'package:mall778/screens/home/components/storesaround.dart';
import 'package:mall778/screens/home/components/wf_product.dart';
import 'package:mall778/screens/service/components/gridlist.dart';

import '../../../size_config.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_product.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(5)),
            const GenHeader(),
            const HomeHeader(),
            HeadSlide(),
            const Gridlist(),
            SizedBox(height: getProportionateScreenWidth(30)),
            const StoresAround(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
