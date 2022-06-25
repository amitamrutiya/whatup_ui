import 'package:flutter/material.dart';
import 'package:whatup_ui/Screen/Chat_Screen.dart';
import 'package:whatup_ui/Screen/calls_screes.dart';
import 'package:whatup_ui/Screen/camera_screen.dart';
import 'package:whatup_ui/Screen/status_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xff004C58),
            title: const Text(
              'WhatsApp',
              style: TextStyle(color: Colors.white),
            ),
            actions: const [
              Icon(Icons.search),
              SizedBox(width: 14),
              Icon(Icons.more_vert),
              SizedBox(width: 4)
            ],
            bottom: const TabBar(
                indicatorColor: Colors.white,
                labelPadding: EdgeInsets.only(bottom: 10),
                tabs: [
                  Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ),
                  Text(
                    "CHATS",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "STATUS",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "CALLS",
                    style: TextStyle(color: Colors.white),
                  )
                ]),
          ),
          body: const TabBarView(
            children: [
              CameraScreen(),
              ChatScreen(),
              StatusScreen(),
              CallScreen(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: const Color(0xff13955F),
            child: const Icon(Icons.message),
          ),
        ),
      ),
    );
  }
}
