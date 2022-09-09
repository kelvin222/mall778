import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mall778/components/gen_header.dart';
import 'package:mall778/components/product_card.dart';
import 'package:mall778/components/productcard.dart';
import 'package:mall778/models/Product.dart';
import 'package:mall778/screens/category/components/nestedlist.dart';
import 'package:mall778/screens/categorylist/components/gridlist.dart';
import 'package:mall778/screens/categorylist/components/headslide.dart';
import 'package:mall778/screens/categorylist/components/mid_header.dart';
import 'package:mall778/screens/service/components/home_header.dart';
import 'package:mall778/size_config.dart';

class Body extends StatelessWidget {
final String category;
  const Body({Key? key, required this.category}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
return SafeArea(
  
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(5)),
            const GenHeader(),
            HeadSlide(),
            MidHeader(category: category),
            Gridlist(category: category),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}




