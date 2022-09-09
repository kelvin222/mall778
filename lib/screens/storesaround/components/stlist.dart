import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mall778/components/productcard.dart';
import 'package:mall778/models/Product.dart';
import 'package:mall778/models/store.dart';
import 'package:mall778/screens/storesaround/components/storecard.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class Gridlist extends StatelessWidget {
  const Gridlist({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
                      padding: EdgeInsets.all(15),
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: demoStore.length,
                      itemBuilder: (context, int index) {
                          return StoreListCard(store: demoStore[index]);
                      },
                    );
            }
}
