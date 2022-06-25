import 'package:flutter/material.dart';
import 'package:whatup_ui/item/calls_item.dart';
import 'package:whatup_ui/models/call.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ListView.builder(
          itemBuilder: ((context, index) => CallItem(callData[index])),
          itemCount: callData.length,
        ),
      ),
    );
  }
}
