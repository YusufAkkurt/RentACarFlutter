import 'package:flutter/material.dart';
import 'package:rent_a_car/models/car_detail.dart';

class CarDetailInfoWidget extends StatelessWidget {
  CarDetail carDetail;

  CarDetailInfoWidget(this.carDetail);

  @override
  Widget build(BuildContext context) {
    return buildDetailInfo();
  }

  Widget buildDetailInfo() {
    return Container(
      margin: EdgeInsets.all(8),
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text(
                this.carDetail.brandName + ", " + this.carDetail.description),
            subtitle: Text("Marka, Model"),
            trailing: Icon(
              Icons.local_taxi,
              color: Colors.grey,
            ),
          ),
          ListTile(
            title: Text(this.carDetail.modelYear.toString() +
                ", " +
                this.carDetail.colorName),
            subtitle: Text("Model Yılı, Renk"),
            trailing: Icon(
              Icons.color_lens_outlined,
              color: Colors.grey,
            ),
          ),
          ListTile(
            title: Text(this.carDetail.findexPoint.toString() +
                " FP, " +
                this.carDetail.dailyPrice.toString() +
                " ₺"),
            subtitle: Text("Findex Puanı, Günlük ücret"),
            trailing: Icon(
              Icons.money,
              color: Colors.grey,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(right: 8, bottom: 10),
                  child: OutlinedButton(
                    child: Text("Kirala"),
                    onPressed: () => print("Kirala"),
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black87),
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
