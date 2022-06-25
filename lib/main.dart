import 'package:flutter/material.dart';

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
          body: TabBarView(
            children: [
              Container(
                child: const Center(
                  child: Text("Camera Screen"),
                ),
              ),
              Container(
                child: const Center(
                  child: Text("Chat Screen"),
                ),
              ),
              Container(
                child: const Center(
                  child: Text("Status Screen"),
                ),
              ),
              Container(
                child: const Center(
                  child: Text("Call Screen"),
                ),
              ),
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
