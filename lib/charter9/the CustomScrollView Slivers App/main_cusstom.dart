import 'package:flutter/material.dart';
import 'package:vannaxay/charter9/the%20CustomScrollView%20Slivers%20App/slivergrid.dart';
import 'package:vannaxay/charter9/the%20CustomScrollView%20Slivers%20App/sliver_appp_bar.dart';
import 'package:vannaxay/charter9/the%20CustomScrollView%20Slivers%20App/sliverlist.dart';

class main_custom extends StatefulWidget {
  const main_custom({super.key});

  @override
  State<main_custom> createState() => _main_customState();
}

class _main_customState extends State<main_custom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 appBar: AppBar(
 title: Text('CustomScrollView - Slivers'),
 elevation: 0.0,
 ),
 body: CustomScrollView(
 slivers: <Widget>[
 const SliverAppBarWidget(),
 const SliverListWidget(),
 const SliverGridWidget(),
 ],
 ),
);
  }
}