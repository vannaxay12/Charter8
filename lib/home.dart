import 'package:flutter/material.dart';
import 'left_drawer.dart';
import 'right_drawer.dart';
import 'birthday.dart';
import 'gratitude.dart';
import 'reminder.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //title: Text('drawer'),
          ),
      drawer: left_drawer(),
      endDrawer: right_drawer(),
      body: SafeArea(
        child: Container(
            //child: Text("test"),
            ),
      ),
    );
  }
}
