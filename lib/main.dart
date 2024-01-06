import 'package:flutter/material.dart';
import 'package:vannaxay/charter8/home.dart';
import 'package:vannaxay/charter9/Barista.dart';

import 'package:vannaxay/charter9/last.dart';

import 'Charter10 Building Layouts/main_layout_app.dart';
import 'charter9/Using The STACK/mainStack.dart';
import 'charter9/Using The STACK/stack.dart';
import 'charter9/Using the GridView extent/gridview_builder.dart';
import 'charter9/the CustomScrollView Slivers App/main_cusstom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Add this line

      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Mainder(),
    );
  }
}

class Mainder extends StatefulWidget {
  const Mainder({super.key});

  @override
  State<Mainder> createState() => _MainderState();
}

class _MainderState extends State<Mainder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(""),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TextButton(
            child: Text("Charter8"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return home();
              }));
            },
            style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                textStyle: TextStyle(
                  color: Colors.white,
                )),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
            child: Text("Charter9 Barista Card"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return barista_card();
              }));
            },
            style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                textStyle: TextStyle(
                  color: Colors.white,
                )),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
            child: Text("Charter9 listview widgets "),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Last();
              }));
            },
            style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                textStyle: TextStyle(
                  color: Colors.white,
                )),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
            child: Text("Charter9 Using the GridView.extent"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return GridViewBuilderWidget();
              }));
            },
            style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                textStyle: TextStyle(
                  color: Colors.white,
                )),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
            child: Text("Using The STACK"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return mainstack();
              }));
            },
            style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                textStyle: TextStyle(
                  color: Colors.white,
                )),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
            child: Text("the CustomScrollView Slivers App"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return main_custom();
              }));
            },
            style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                textStyle: TextStyle(
                  color: Colors.white,
                )),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
            child: Text("Charter 10 Building Layouts"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return main_layout_app();
              }));
            },
            style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                textStyle: TextStyle(
                  color: Colors.white,
                )),
          ),
        ]));
  }
}
