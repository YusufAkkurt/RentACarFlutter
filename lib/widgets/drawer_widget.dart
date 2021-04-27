import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Drawer drawer = Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.grey[350]),
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: ListTile(
                    leading: Icon(
                      Icons.car_rental,
                      size: 36,
                    ),
                    title: Text(
                      "Rent A Car",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text(
              "Arabalar",
              style: TextStyle(fontSize: 18),
            ),
            onTap: () => print("Arabalar"),
          ),
          ListTile(
            title: Text(
              "Markalar",
              style: TextStyle(fontSize: 18),
            ),
            onTap: () => print("Markalar"),
          ),
          ListTile(
            title: Text(
              "Renkler",
              style: TextStyle(fontSize: 18),
            ),
            onTap: () => print("Renkler"),
          ),
        ],
      ),
    );

    return drawer;
  }
}
