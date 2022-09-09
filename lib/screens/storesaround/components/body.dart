
import 'package:flutter/material.dart';
import 'package:mall778/components/gen_header.dart';
import 'package:mall778/models/topcat.dart';
import 'package:mall778/screens/storesaround/components/stlist.dart';
import 'package:mall778/screens/storesaround/components/headslide.dart';
import 'package:mall778/screens/storesaround/components/mid_header.dart';
import 'package:mall778/size_config.dart';

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
            HeadSlide(),
            MidHeader(),
            Gridlist(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}




