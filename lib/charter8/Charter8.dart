import 'package:flutter/material.dart';
import 'package:vannaxay/charter8/Charter8.dart';
import 'package:vannaxay/charter8/home.dart';

void main() {
  runApp(const charter8());
}

class charter8 extends StatelessWidget {
  const charter8({super.key});

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
      home: home(),
    );
  }
}
