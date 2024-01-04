import 'package:flutter/material.dart';
import 'package:vannaxay/charter8/left_drawer.dart';
import 'package:vannaxay/charter8/right_drawer.dart';
import 'package:vannaxay/charter8/birthday.dart';
import 'package:vannaxay/charter8/gratitude.dart';
import 'package:vannaxay/charter8/reminder.dart';

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
