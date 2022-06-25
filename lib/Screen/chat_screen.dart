import 'package:flutter/material.dart';
import 'package:whatup_ui/item/chat_item.dart';
import '../models/chat.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (ctx, i) {
        return ChatItem(chatScreenData[i]);
      },
      itemCount: chatScreenData.length,
    );
  }
}
