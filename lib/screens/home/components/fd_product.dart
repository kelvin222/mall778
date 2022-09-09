import 'package:flutter/material.dart';
import 'package:mall778/components/product_card.dart';
import 'package:mall778/models/Product.dart';
import 'package:mall778/models/topcat.dart';
import 'package:mall778/screens/topcategorylist/topcatelist_screen.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class FoodDrink extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Food & Drinks", 
          press: () => Navigator.pushNamed(
            context,
            TopCateScreen.routeName,
            arguments: TopCateArguments(catename: "Food & Drinks", newTop : demoFood),
          ),),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                  if (demoProducts[index].isPopular)
                    return ProductCard(product: demoProducts[index]);

                  return SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        )
      ],
    );
  }
}
