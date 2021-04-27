import 'package:flutter/material.dart';
import 'package:rent_a_car/widgets/car_list_row_widget.dart';

class CarListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildCarList(context);
  }

  buildCarList(BuildContext context) => Column(
        children: [
          SizedBox(height: 10),
          SizedBox(
              height: 500,
              child: GridView.count(
                crossAxisCount: 1,
                children: List.generate(1, (index) {
                  return CarListRowWidget();
                }),
              ))
        ],
      );
}
