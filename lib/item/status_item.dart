import 'package:flutter/material.dart';
import 'package:whatup_ui/models/status.dart';

class StatusItem extends StatelessWidget {
  final Status newStatus;
  const StatusItem(this.newStatus, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(newStatus.avatar),
        radius: 25,
      ),
      title: Text(newStatus.name,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      subtitle: Text(
        newStatus.message,
        style: const TextStyle(color: Colors.grey),
      ),
    );
  }
}
