import 'package:flutter/material.dart';

import '../models/chat.dart';

class ChatItem extends StatelessWidget {
  final Chat newChat;
  const ChatItem(this.newChat, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      padding: const EdgeInsets.all(8),
      color: Colors.white,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            child: CircleAvatar(
              backgroundImage: newChat.avatar == null
                  ? const AssetImage("images/no_image.jpg")
                  : AssetImage(newChat.avatar as String),
              radius: 25,
            ),
          ),
          Expanded(
              child: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    newChat.name,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(newChat.lastMessage,
                      style: const TextStyle(color: Colors.grey)),
                ]),
          )),
          Container(
            padding: const EdgeInsets.all(8),
            child: Center(
                child: Text(
              newChat.time,
              style: const TextStyle(color: Colors.grey),
            )),
          )
        ],
      ),
    );
  }
}
