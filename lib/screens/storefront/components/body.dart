import 'package:flutter/material.dart';
import 'package:mall778/components/default_button.dart';
import 'package:mall778/models/Product.dart';
import 'package:mall778/models/store.dart';
import 'package:mall778/size_config.dart';

import 'color_dots.dart';
import 'store_description.dart';
import 'top_rounded_container.dart';
import 'store_image.dart';

class Body extends StatelessWidget {
  final Store store;

  const Body({Key? key, required this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        StoreImage(store: store),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              StoreDescription(
                store: store,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    TopRoundedContainer(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.15,
                          right: SizeConfig.screenWidth * 0.15,
                          bottom: getProportionateScreenWidth(40),
                          top: getProportionateScreenWidth(15),
                        ),
                        child: DefaultButton(
                          text: "Add To Cart",
                          press: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
