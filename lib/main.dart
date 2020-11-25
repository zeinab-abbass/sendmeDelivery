import 'package:chat_app/models/Details.dart';
import 'package:chat_app/views/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SendMe - Deliveries',
      theme: ThemeData(
      ),
      home: Home()
    );
  }
}