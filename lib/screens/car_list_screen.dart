import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rent_a_car/data/car_service.dart';
import 'package:rent_a_car/models/car_details.dart';
import 'package:rent_a_car/widgets/car_list_widget.dart';

class CarListScreen extends StatefulWidget {
  @override
  _CarListScreenState createState() => _CarListScreenState();
}

class _CarListScreenState extends State<CarListScreen> {
  var carDetails = <CarDetails>[];

  @override
  void initState() {
    this.getCarDetails();
  }

  @override
  Widget build(BuildContext context) {
    return CarListWidget(this.carDetails);
  }

  getCarDetails() {
    CarService.getAllCarDetails().then((response) => {
      setState(() {
        Iterable carList = jsonDecode(response.body)["data"];
        this.carDetails = carList.map((carDetail) => CarDetails.fromJson(carDetail)).toList();
      })
    });
  }
}
