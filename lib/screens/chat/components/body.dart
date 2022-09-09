import 'package:flutter/material.dart';
import 'package:mall778/components/gen_header.dart';
import 'package:mall778/screens/chat/components/chatlistview.dart';

import '../../../size_config.dart';
import 'cartlistitem.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(5)),
            GenHeader(),
            ChatListView(),
          SizedBox(height: 20),
          
     ],
        ),
      ),
    );
  }
}
