import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:mall778/models/Product.dart';
import 'package:mall778/screens/details/details_screen.dart';

import '../constants.dart';
import '../size_config.dart';

class Productcd extends StatelessWidget {
  const Productcd({
    Key? key,
    this.width = 140,
    required this.product,
  }) : super(key: key);

  final double width;
  final Product product;

  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Padding(
        padding: EdgeInsets.all(getProportionateScreenWidth(10)),
        child: SizedBox(
          width: getProportionateScreenWidth(width),
          child: GestureDetector(
            onTap: () => Navigator.pushNamed(
              context,
              DetailsScreen.routeName,
              arguments: ProductDetailsArguments(product: product),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                  aspectRatio: 2.02,
                  child: Container(
                    padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                    decoration: BoxDecoration(
                      color: kSecondaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Hero(
                      tag: product.id.toString(),
                      child: Image.asset(product.images[0]),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  product.title,
                  style: TextStyle(color: Colors.black),
                  maxLines: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                          "assets/images/naira.png",
            height: getProportionateScreenHeight(15),
            width: getProportionateScreenWidth(15),
                        ),
                    Text(
                      "${product.price}",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(18),
                        fontWeight: FontWeight.w600,
                        color: kPrimaryColor,
                      ),
                    ),
                  ],
                ),
                    InkWell(
                      borderRadius: BorderRadius.circular(50),
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                        height: getProportionateScreenWidth(28),
                        width: getProportionateScreenWidth(28),
                        decoration: BoxDecoration(
                          color: product.isFavourite
                              ? kPrimaryColor.withOpacity(0.15)
                              : kSecondaryColor.withOpacity(0.1),
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/Heart Icon_2.svg",
                          color: product.isFavourite
                              ? Color(0xFFFF4848)
                              : Color(0xFFDBDEE4),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        
      ),
    );
  }
}
