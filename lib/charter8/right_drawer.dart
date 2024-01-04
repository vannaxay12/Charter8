import 'package:flutter/material.dart';
import 'package:vannaxay/charter8/menu_list_title.dart';

class right_drawer extends StatelessWidget {
  const right_drawer({super.key});

  @override
  Widget build(BuildContext context) {
     return Drawer(
      child: ListView(
        children: const [
          UserAccountsDrawerHeader(
            accountName: Text("Vannaxay"),
            accountEmail: Text("Vannaxay@gmail,com"),
            currentAccountPicture: Icon(
              Icons.face,
              size: 48.0,
              color: Colors.white,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/iopl.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
          ListTile(
            leading: Icon(Icons.emoji_emotions),
            title: Text("Gratitude"),
          ),
          ListTile(
            leading: Icon(Icons.time_to_leave),
            title: Text("Remider"),
          ),
          Divider(
            thickness: 1,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Setting"),
          ),
        ],
      ),
    );
  }

}