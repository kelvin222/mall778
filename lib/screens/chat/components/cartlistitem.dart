import 'package:flutter/material.dart';
import 'package:mall778/models/chatlist.dart';
import 'package:mall778/size_config.dart';

import '../../../constants.dart';

class ChatListItem extends StatelessWidget {
  const ChatListItem({
    Key? key,
    required this.chatList,
  }) : super(key: key);

  final ChatList chatList;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(15)),
        child: ListTile(
          leading: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.grey[200],
              backgroundImage: AssetImage(chatList.images)),
          title: Row(
            children: <Widget>[
              Text(
                chatList.storename,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(chatList.time,
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 11,
                      fontWeight: FontWeight.w500)),
            ],
          ),
          subtitle: Text(
            chatList.orderid,
            style: const TextStyle(
                fontSize: 15,
                color: Colors.black87,
                fontWeight: FontWeight.w500),
          ),
          trailing: const Icon(
                            Icons.circle,
                            color: Colors.green,
                            size: 5,),
        ));
  }
}
