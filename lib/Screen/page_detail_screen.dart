import 'package:flutter/material.dart';

import 'message.dart';

class PageDetail extends StatelessWidget {
  const PageDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff008069),
        title: Row(
          children: const [
            CircleAvatar(
              backgroundImage: AssetImage("images/no_image.jpg"),
            ),
            SizedBox(width: 10),
            Text(
              'Rahul',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.video_call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(child: MessagePage()),
          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Flexible(
                  child: TextFormField(
                    minLines: 1,
                    maxLines: 5,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide:
                            BorderSide(color: Colors.grey.shade500, width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide:
                            BorderSide(color: Colors.grey.shade500, width: 1),
                      ),
                      hintText: 'Type a message',
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
