import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  final Function(int) onTabChanged; // Callback to change the selected tab

  DrawerWidget({required this.onTabChanged});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text(
              'Welcome Aditya',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              onTabChanged(0); // Change to the Home tab (index 0)
            },
          ),
          ListTile(
            leading: Icon(Icons.production_quantity_limits_sharp),
            title: Text("Products"),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              onTabChanged(1); // Change to the Products tab (index 1)
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Services"),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              onTabChanged(2); // Change to the Services tab (index 2)
            },
          ),
        ],
      ),
    );
  }
}
