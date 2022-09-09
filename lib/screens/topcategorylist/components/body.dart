
import 'package:flutter/material.dart';
import 'package:mall778/components/gen_header.dart';
import 'package:mall778/models/topcat.dart';
import 'package:mall778/screens/topcategorylist/components/categrid.dart';
import 'package:mall778/screens/topcategorylist/components/gridlist.dart';
import 'package:mall778/screens/topcategorylist/components/headslide.dart';
import 'package:mall778/screens/topcategorylist/components/mid_header.dart';
import 'package:mall778/size_config.dart';

class Body extends StatelessWidget {
final String catename;
  final List<TopCat> newTop;
  const Body({Key? key, required this.catename,required this.newTop}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
return SafeArea(
  
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(5)),
            const GenHeader(),
            CateGrid(catename: catename,catey: newTop),
            HeadSlide(),
            MidHeader(catename: catename),
            Gridlist(catename: catename),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}




