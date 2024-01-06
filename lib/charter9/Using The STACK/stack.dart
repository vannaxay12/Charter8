import 'package:flutter/material.dart';
import 'package:vannaxay/charter9/Using%20The%20STACK/stackfavorite.dart';

class Stack_sk extends StatefulWidget {
  const Stack_sk({super.key});

  @override
  State<Stack_sk> createState() => _Stack_skState();
}

class _Stack_skState extends State<Stack_sk> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image(
          image: AssetImage('images/scennery.jpg'),
        ),
        Positioned(
          bottom: 10.0,
          left: 10.0,
          child: CircleAvatar(
            radius: 48.0,
            backgroundImage: AssetImage('images/liger.jpeg'),
          ),
        ),
        Positioned(
          bottom: 16.0,
          right: 16.0,
          child: Text(
            'Liger',
            style: TextStyle(
              fontSize: 32.0,
              color: Colors.white30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
      
    );

    
  }
}
