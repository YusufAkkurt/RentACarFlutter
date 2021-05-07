import 'package:flutter/material.dart';
import 'package:rent_a_car/screens/car_list_screen.dart';
import 'package:rent_a_car/widgets/drawer_widget.dart';

class MainScreen extends StatefulWidget {
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {

  @override
  void initState() {
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
        body: CarListScreen(),
        drawer: DrawerWidget());
  }
}
