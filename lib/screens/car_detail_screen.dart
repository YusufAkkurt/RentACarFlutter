import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rent_a_car/models/car_detail.dart';
import 'package:rent_a_car/widgets/car/car_detail_info_widget.dart';
import 'package:rent_a_car/widgets/car/car_image_slider_widget.dart';

class CarDetailScreen extends StatelessWidget {
  var carDetail = CarDetail.empty();

  CarDetailScreen(this.carDetail);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[350],
        title: Text("Rent A Car", style: TextStyle(color: Colors.black87)),
        iconTheme: IconThemeData(color: Colors.black87),
      ),
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return Column(
      children: <Widget>[
        Expanded(child: CarImageSliderWidget(this.carDetail.carImages)),
        Expanded(child: CarDetailInfoWidget(this.carDetail)),
      ],
    );
  }
}
