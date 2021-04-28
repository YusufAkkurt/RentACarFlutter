import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rent_a_car/data/car_service.dart';
import 'package:rent_a_car/models/car.dart';
import 'package:rent_a_car/widgets/car_list_widget.dart';
import 'package:rent_a_car/widgets/drawer_widget.dart';

class MainScreen extends StatefulWidget {
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  var cars = <Car>[];

  @override
  void initState() {
    getCars();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[350],
          title: Text("Rent A Car", style: TextStyle(color: Colors.black87)),
          iconTheme: IconThemeData(color: Colors.black87),
        ),
        body: CarListWidget(),
        drawer: DrawerWidget());
  }

  getCars() {
    CarService.getAll().then((response) => {
          setState(() {
            var list = jsonDecode(response.body);
            print(list["data"]);
          })
        });
  }
}
