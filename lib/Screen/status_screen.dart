import 'package:flutter/material.dart';
import 'package:whatup_ui/item/status_item.dart';
import 'package:whatup_ui/models/status.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ListTile(
            title: Text("My Status",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            subtitle: Text("Tap to add status update",
                style: TextStyle(color: Colors.grey)),
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage("images/no_image.jpg"),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              "Recent Updates",
              style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, i) {
                return StatusItem(statusData[i]);
              },
              itemCount: statusData.length,
            ),
          )
        ],
      ),
    );
  }
}
