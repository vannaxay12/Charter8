import 'package:flutter/material.dart';

class DISMISSIBLE extends StatefulWidget {
  const DISMISSIBLE({super.key});

  @override
  State<DISMISSIBLE> createState() => _DISMISSIBLEState();
}

class Trip {
  String id;
  String nametrip;
  String locationtrip;
  Trip({required this.id, required this.nametrip, required this.locationtrip});
}

class _DISMISSIBLEState extends State<DISMISSIBLE> {
  List<Trip> _trips = [];
  @override
  void initState() {
    super.initState();
    _trips
      ..add(Trip(id: '0', nametrip: 'Rome', locationtrip: 'Italy'))
      ..add(Trip(id: '1', nametrip: 'Paris', locationtrip: 'France'))
      ..add(Trip(id: '2', nametrip: 'New York', locationtrip: 'USA - New York'))
      ..add(Trip(id: '3', nametrip: 'Cancun', locationtrip: 'Mexico'))
      ..add(Trip(id: '4', nametrip: 'London', locationtrip: 'England'))
      ..add(Trip(id: '5', nametrip: 'Sydney', locationtrip: 'Australia'))
      ..add(Trip(id: '6', nametrip: 'Miami', locationtrip: 'USA - Florida'))
      ..add(Trip(id: '7', nametrip: 'Rio de Janeiro', locationtrip: 'Brazil'))
      ..add(Trip(id: '8', nametrip: 'Cusco', locationtrip: 'Peru'))
      ..add(Trip(id: '9', nametrip: 'New Delhi', locationtrip: 'India'))
      ..add(Trip(id: '10', nametrip: 'Tokyo', locationtrip: 'Japan'));
  }

  void _markTripCompleted() {}
  void _deleteTrip() {
    // Delete trip from Database or web service

    // Assuming _trips is a List<Trip>
    if (_trips.isNotEmpty) {
      // Remove the first item from the list for demonstration purposes
      setState(() {
        _trips.removeAt(0);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Dismissible App')),
        body: ListView.builder(
          itemCount: _trips.length,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
              key: Key(_trips[index].id),
              child: _buildListTile(index),
              background: _buildCompleteTrip(),
              secondaryBackground: _buildRemoveTrip(),
              onDismissed: (DismissDirection direction) {
                direction == DismissDirection.startToEnd
                    ? _markTripCompleted()
                    : _deleteTrip();
                setState(() {
                  _trips.removeAt(index);
                });
              },
            );
          },
        ));
  }

  ListTile _buildListTile(int index) {
    return ListTile(
      title: Text('${_trips[index].nametrip}'),
      subtitle: Text(_trips[index].locationtrip),
      leading: Icon(Icons.flight),
      trailing: Icon(Icons.fastfood),
    );
  }

  Container _buildCompleteTrip() {
    return Container(
      color: Colors.green,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(
              Icons.done,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  Container _buildRemoveTrip() {
    return Container(
      color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Icon(
              Icons.delete,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
