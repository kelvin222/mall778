import 'package:flutter/material.dart';

class ChatList {
  final int id;
  final String storename, orderid, time;
  final String images;

  ChatList({
    required this.id,
    required this.images,
    required this.storename,
    required this.orderid,
    required this.time,
  });
}

// Our demo ChatLists

List<ChatList> demoList = [
  ChatList(
    id: 1,
    images: "assets/images/ps4_console_white_1.png",
    storename: "Newtown stores",
    orderid: "dfghjkliuyt456",
    time: "12:43 am",
  ),
  ChatList(
    id: 2,
    images: "assets/images/ps4_console_white_1.png",
    storename: "Newtown stores",
    orderid: "dfghjkliuyt456",
    time: "12:43 am",
  ),
  ChatList(
    id: 3,
    images: "assets/images/ps4_console_white_1.png",
    storename: "Mama Gold stores",
    orderid: "fflkjjkliuyt456",
    time: "12:43 am",
  ),
  ChatList(
    id: 4,
    images: "assets/images/ps4_console_white_1.png",
    storename: "Ade & son stores",
    orderid: "rfghjkcvbt456",
    time: "5:43 pm",
  ),
];
