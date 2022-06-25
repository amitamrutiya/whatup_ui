import 'package:flutter/material.dart';
import 'package:whatup_ui/Screen/Chat_Screen.dart';
import 'package:whatup_ui/Screen/calls_screes.dart';
import 'package:whatup_ui/Screen/camera_screen.dart';
import 'package:whatup_ui/Screen/status_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff004C58),
          title: const Text(
            'WhatsApp',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
              controller: _tabController,
              indicatorColor: Colors.white,
              labelPadding: const EdgeInsets.only(bottom: 10),
              tabs: const [
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
          controller: _tabController,
          children: const [
            CameraScreen(),
            ChatScreen(),
            StatusScreen(),
            CallScreen(),
          ],
        ),
        floatingActionButton: (_tabController.index == 1 ||
                _tabController.index == 2 ||
                _tabController.index == 3)
            ? FloatingActionButton(
                onPressed: () {
                  print(Localizations.localeOf(context));
                },
                backgroundColor: const Color(0xff13955F),
                child: const Icon(Icons.message),
              )
            : null,
      ),
    );
  }
}
