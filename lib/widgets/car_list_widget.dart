import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rent_a_car/models/car_details.dart';

class CarListWidget extends StatelessWidget {
  var carDetails = <CarDetails>[];

  CarListWidget(this.carDetails);

  @override
  Widget build(BuildContext context) {
    return buildCarList();
  }

  ListView buildCarList() {
    return ListView.builder(
      itemCount: carDetails.length,
      itemBuilder: (BuildContext context, index) {
        var carDetail = this.carDetails[index];
        var imagePath = "https://mychiptuningfiles.com/tr/image/models/RrqzC1YeTCoj5FnDIfOlD0LsNPUjlo.png";
        return Card(
          margin: EdgeInsets.all(8),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(carDetail.brandName + " " + carDetail.description),
                subtitle: Text("Findex Puanı: " + carDetail.findexPoint.toString()),
                trailing: Text(carDetail.dailyPrice.toString() + " ₺"),
              ),
              Image.network(imagePath),
              ListTile(
                title: Text("Detaylar", style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text(
                  "Renk: " + carDetail.colorName +
                  ", Model Yılı: " + carDetail.modelYear.toString(),
                ),
              )
            ],
          ),
        );
      }
    );
  }
}
