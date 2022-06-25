import 'package:flutter/material.dart';

import '../models/call.dart';

class CallItem extends StatelessWidget {
  final Call newCall;
  const CallItem(this.newCall, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(newCall.avatar),
        radius: 25,
      ),
      title: Text(newCall.name,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      subtitle: Row(
        children: [
          Container(child: newCall.callType),
          const SizedBox(width: 4),
          Text(
            newCall.time,
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.call,
          color: Colors.teal,
        ),
      ),
    );
  }
}
