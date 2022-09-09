import 'package:flutter/material.dart';

class Store {
  final int id;
  final String name, address, contact, ownername, description;
  final String image, ownerpic;

  Store({
    required this.id,
    required this.image,
    required this.name,
    required this.contact,
    required this.description,
    required this.address,
    required this.ownerpic,
    required this.ownername,
  });
}

// Our demo Products

List<Store> demoStore = [
  Store(
    id: 1,
    image:"assets/images/ps4_console_white_1.png",
    name: "Oasis Store",
    ownername:"Benny Uche",
    description: "Some random text parentData: paintOffset=Offset(0.0, 0.0) (can use size) constraints: SliverConstraints(AxisDirection.right, GrowthDirection.forward, ScrollDirectionhs idle, scrollOffset: 0.0, remainingPaintExtent: 0.0, crossAxisExtent: 0.0, crossAxisDirection: AxisDirection.down, viewportMainAxisExtent: 0.0, remainingCacheExtent: 0.0, cacheOrigin: 0.0)",
    ownerpic: "assets/images/ps4_console_white_1.png",
    address: "no 12 New road, by Gas bustop",
    contact: "08133483483",
  ),
  Store(
    id: 2,
    image:"assets/images/ps4_console_white_1.png",
    name: "Next Level Store",
    ownername:"Benny Uche",
    description: "Some random text parentData: paintOffset=Offset(0.0, 0.0) (can use size) constraints: SliverConstraints(AxisDirection.right, GrowthDirection.forward, ScrollDirectionhs idle, scrollOffset: 0.0, remainingPaintExtent: 0.0, crossAxisExtent: 0.0, crossAxisDirection: AxisDirection.down, viewportMainAxisExtent: 0.0, remainingCacheExtent: 0.0, cacheOrigin: 0.0)",
    ownerpic: "assets/images/ps4_console_white_1.png",
    address: "no 12 New road, by Gas bustop",
    contact: "08133483483",
  ),
  Store(
    id: 3,
    image:"assets/images/ps4_console_white_1.png",
    name: "Gastrob Beauty Store",
    ownername:"Benny Uche",
    description: "Some random text parentData: paintOffset=Offset(0.0, 0.0) (can use size) constraints: SliverConstraints(AxisDirection.right, GrowthDirection.forward, ScrollDirectionhs idle, scrollOffset: 0.0, remainingPaintExtent: 0.0, crossAxisExtent: 0.0, crossAxisDirection: AxisDirection.down, viewportMainAxisExtent: 0.0, remainingCacheExtent: 0.0, cacheOrigin: 0.0)",
    ownerpic: "assets/images/ps4_console_white_1.png",
    address: "no 12 New road, by Gas bustop",
    contact: "08133483483",
  ),
  Store(
    id: 4,
    image:"assets/images/ps4_console_white_1.png",
    name: "Oasis Store",
    ownername:"Benny Uche",
    description: "Some random text parentData: paintOffset=Offset(0.0, 0.0) (can use size) constraints: SliverConstraints(AxisDirection.right, GrowthDirection.forward, ScrollDirectionhs idle, scrollOffset: 0.0, remainingPaintExtent: 0.0, crossAxisExtent: 0.0, crossAxisDirection: AxisDirection.down, viewportMainAxisExtent: 0.0, remainingCacheExtent: 0.0, cacheOrigin: 0.0)",
    ownerpic: "assets/images/ps4_console_white_1.png",
    address: "no 12 New road, by Gas bustop",
    contact: "08133483483",
  ),
  Store(
    id: 5,
    image:"assets/images/ps4_console_white_1.png",
    name: "FoodMart Store",
    ownername:"Benny Uche",
    description: "Some random text parentData: paintOffset=Offset(0.0, 0.0) (can use size) constraints: SliverConstraints(AxisDirection.right, GrowthDirection.forward, ScrollDirectionhs idle, scrollOffset: 0.0, remainingPaintExtent: 0.0, crossAxisExtent: 0.0, crossAxisDirection: AxisDirection.down, viewportMainAxisExtent: 0.0, remainingCacheExtent: 0.0, cacheOrigin: 0.0)",
    ownerpic: "assets/images/ps4_console_white_1.png",
    address: "no 12 New road, by Gas bustop",
    contact: "08133483483",
  ),
  Store(
    id: 6,
    image:"assets/images/ps4_console_white_1.png",
    name: "Gregg SuperStore",
    ownername:"Benny Uche",
    description: "Some random text parentData: paintOffset=Offset(0.0, 0.0) (can use size) constraints: SliverConstraints(AxisDirection.right, GrowthDirection.forward, ScrollDirectionhs idle, scrollOffset: 0.0, remainingPaintExtent: 0.0, crossAxisExtent: 0.0, crossAxisDirection: AxisDirection.down, viewportMainAxisExtent: 0.0, remainingCacheExtent: 0.0, cacheOrigin: 0.0)",
    ownerpic: "assets/images/ps4_console_white_1.png",
    address: "no 12 New road, by Gas bustop",
    contact: "08133483483",
  ),
];
