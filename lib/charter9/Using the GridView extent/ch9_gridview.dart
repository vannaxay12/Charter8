import 'package:flutter/material.dart';

class GridIcons {
  List<IconData> iconList = [];

  List<IconData> getIconList() {
    iconList
      ..add(Icons.free_breakfast)
      ..add(Icons.access_alarms)
      ..add(Icons.directions_car)
      // Add more icons as needed
      ..add(Icons.flight)
      ..add(Icons.cake)
      ..add(Icons.card_giftcard)
      ..add(Icons.change_history)
      ..add(Icons.face)
      ..add(Icons.star)
      ..add(Icons.headset_mic)
      ..add(Icons.directions_walk)
      ..add(Icons.sentiment_satisfied)
      ..add(Icons.cloud_queue)
      ..add(Icons.exposure)
      ..add(Icons.gps_not_fixed)
      ..add(Icons.child_friendly)
      ..add(Icons.child_care)
      ..add(Icons.edit_location)
      ..add(Icons.event_seat)
      ..add(Icons.lightbulb_outline);

    return iconList;
  }
}

class GridViewDer extends StatefulWidget {
  const GridViewDer({Key? key});

  @override
  State<GridViewDer> createState() => _GridViewDerState();
}

class _GridViewDerState extends State<GridViewDer> {
  final GridIcons _gridIcons = GridIcons();
  List<IconData> _iconList = [];

  @override
  void initState() {
    super.initState();
    _iconList = _gridIcons.getIconList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Demo'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 175.0,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
          childAspectRatio: 1.0,
        ),
        itemCount: 7000,
        itemBuilder: (BuildContext context, int index) {
          print('_buildGridView $index');
          return Card(
            margin: EdgeInsets.all(8.0),
            child: InkWell(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    _iconList[0],
                    size: 48.0,
                    color: Colors.blue,
                  ),
                  Divider(),
                  Text(
                    'Index $index',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
              onTap: () {
                print('Row $index');
              },
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: GridViewDer(),
    ),
  );
}
