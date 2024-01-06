import 'package:flutter/material.dart';
import 'package:vannaxay/charter9/Using%20The%20STACK/stack.dart';
import 'package:vannaxay/charter9/Using%20The%20STACK/stackfavorite.dart';

class mainstack extends StatefulWidget {
  const mainstack({super.key});

  @override
  State<mainstack> createState() => _mainstackState();
}

class _mainstackState extends State<mainstack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Stack'),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            if (index.isEven) {
              return const Stack_sk();
            } else {
              return const StackFavoriteWidget();
            }
          },
        ),
      ),
    );
  }
}
