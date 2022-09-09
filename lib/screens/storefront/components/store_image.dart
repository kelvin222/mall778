import 'package:flutter/material.dart';
import 'package:mall778/models/store.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class StoreImage extends StatefulWidget {
  const StoreImage({
    Key? key,
    required this.store,
  }) : super(key: key);

  final Store store;

  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<StoreImage> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Hero(
              tag: widget.store.id.toString(),
              child: Image.asset(widget.store.image),
            ),
          ),
        ),
      ],
    );
  }

}
