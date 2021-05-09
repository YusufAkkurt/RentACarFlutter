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
          var baseUrl = "https://10.0.2.2:5001/";
          return Card(
            margin: EdgeInsets.all(8),
            child: Column(
              children: <Widget>[
                ListTile(
                  title:
                      Text(carDetail.brandName + " " + carDetail.description),
                  subtitle:
                      Text("Findex Puanı: " + carDetail.findexPoint.toString()),
                  trailing: Text(carDetail.dailyPrice.toString() + " ₺"),
                ),
                Image.network(baseUrl + carDetail.carImages[0].imagePath),
                ListTile(
                  title: Text(
                    "Detaylar",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "Renk: " +
                        carDetail.colorName +
                        ", Model Yılı: " +
                        carDetail.modelYear.toString(),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(right: 8, bottom: 10),
                        child: OutlinedButton(
                          child: Text("Detaylar"),
                          onPressed: () {
                            print("Detaylar");
                          },
                          style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.black87),
                        ),
                        )),
                    Padding(
                        padding: EdgeInsets.only(right: 16, bottom: 10),
                        child: OutlinedButton(
                          child: Text("Kirala"),
                          onPressed: () {
                            print("Kirala");
                          },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.black54),
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        )),
                  ],
                ),
              ],
            ),
          );
        });
  }
}
