import 'package:flutter/material.dart';

class Call {
  final String name;
  final String time;
  final String avatar;
  final Icon callType;

  Call(
      {required this.name,
      required this.time,
      required this.avatar,
      required this.callType});

  static Icon callReceived = const Icon(
    Icons.call_received,
    size: 18,
    color: Colors.green,
  );
  static Icon callMissed = const Icon(
    Icons.call_missed,
    size: 18,
    color: Colors.red,
  );
}

List<Call> callData = [
  Call(
    name: "Rahul",
    time: "10:20",
    callType: Call.callReceived,
    avatar: "images/rahul.jpg",
  ),
  Call(
    name: "Sumit Kumar",
    time: "14:23",
    callType: Call.callMissed,
    avatar: "images/sumit.jpg",
  ),
  Call(
    name: "Shukla Ji",
    time: "23:20",
    callType: Call.callReceived,
    avatar: "images/shukla.jpg",
  ),
  Call(
    name: "Sonam Sharma",
    time: "22:30",
    callType: Call.callMissed,
    avatar: "images/sonam.jpg",
  ),
];
