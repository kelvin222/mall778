import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mall778/components/productcard.dart';
import 'package:mall778/models/Product.dart';
import 'package:mall778/models/store.dart';
import 'package:mall778/models/topcat.dart';
import 'package:mall778/screens/categorylist/catelist_screen.dart';
import 'package:mall778/screens/storefront/stores_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class StoreListCard extends StatelessWidget {
  const StoreListCard({
    Key? key,
    required this.store,
  }) : super(key: key);
  final Store store;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 5, right: 5),
      margin: const EdgeInsets.only(bottom: 10),
      width: MediaQuery.of(context).size.width,
                  child: InkWell(
                    child: Stack(
                      children: <Widget>[
                        Hero(
                          tag: store.id,
                          child: Container(
                            height: 120,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(store.image))
                          ),
                        ),
                        Positioned(
                          height: 70,
                          width: MediaQuery.of(context).size.width * 0.70,
                          left: MediaQuery.of(context).size.width * 0.1,
                          bottom: 5,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      color: Colors.grey.shade200,
                                      offset: Offset(0, 2),
                                      blurRadius: 2)
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                      child: Text(
                                      store.name,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Expanded(
                                            child: Text(store.ownername,
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400
                                            ),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,),
                                      )
                                    ],
                                  ),
                                  Divider(
                                    color: Colors.grey[300],
                                    height: 7,
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        const Icon(
                                          Icons.location_on,
                                          size: 12,
                                          color: Colors.orange,
                                        ),
                                        Expanded(
                                          child: Text(
                                            store.address,
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.grey[700]),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    onTap:() => Navigator.pushNamed(
            context,
            StoreFrontScreen.routeName,
            arguments: StoreFrontArguments(store: store),
          ),
                  ),
                
              );
  }}