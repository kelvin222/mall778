import 'package:flutter/material.dart';
import 'package:mall778/models/chatlist.dart';
import 'package:mall778/screens/chat/components/cartlistitem.dart';

import '../../../size_config.dart';

class ChatListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
                      padding: EdgeInsets.all(15),
                      physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
                      itemCount: demoList.length,
                      itemBuilder: (context, int index) {
                          return ChatListItem(chatList: demoList[index]);
                      },
                    );
            }
}
