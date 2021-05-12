import 'package:flutter/material.dart';
import 'package:rent_a_car/screens/brand_list_screen.dart';
import 'package:rent_a_car/screens/main_screen.dart';

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
              "Ana sayfa",
              style: TextStyle(fontSize: 18),
            ),
            onTap: () => customRoute(context, MainScreen()),
          ),
          ListTile(
            title: Text(
              "Markalar",
              style: TextStyle(fontSize: 18),
            ),
            onTap: () => customRoute(context, BrandListScreen()),
          ),
        ],
      ),
    );

    return drawer;
  }

  customRoute(BuildContext context, screen) {
    Navigator.push(context, MaterialPageRoute(builder: (builder) => screen));
  }
}
