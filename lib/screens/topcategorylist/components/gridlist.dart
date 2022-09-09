import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mall778/components/productcard.dart';
import 'package:mall778/models/Product.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class Gridlist extends StatelessWidget {
  const Gridlist({
    Key? key,
    required this.catename,
  }) : super(key: key);

  final String catename;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
                demoProducts.length,
                (index) {
                  if (demoProducts[index].isPopular)
                    return Productcd(product: demoProducts[index]);

                  return SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
    );
  }
}
