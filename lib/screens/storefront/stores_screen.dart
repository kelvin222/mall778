import 'package:flutter/material.dart';
import 'package:mall778/models/store.dart';
import '../../models/store.dart';
import 'components/body.dart';
import 'components/custom_app_bar.dart';

class StoreFrontScreen extends StatelessWidget {
  static String routeName = "/storefront";

  @override
  Widget build(BuildContext context) {
    final StoreFrontArguments agrs =
        ModalRoute.of(context)!.settings.arguments as StoreFrontArguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(),
      ),
      body: Body(store: agrs.store),
    );
  }
}

class StoreFrontArguments {
  final Store store;

  StoreFrontArguments({required this.store});
}
