import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rent_a_car/models/car_detail.dart';

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

  Widget buildBody(){
    return Column(
      children: <Widget>[
        Expanded(child: buildSlider()),
        Expanded(child: buildDetail()),
      ],
    );
  }

  Widget buildSlider() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListView(
        children: [
          CarouselSlider.builder(
            itemCount: this.carDetail.carImages.length,
            itemBuilder: (context, index, realIdx) {
              var baseUrl = "https://10.0.2.2:5001/";
              var carImage = this.carDetail.carImages[index];
              return Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  color: Colors.grey[350],
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(baseUrl + carImage.imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
            options: CarouselOptions(
              height: 180.0,
              enlargeCenterPage: true,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
            ),
          )
        ],
      ),
    );
  }

  Widget buildDetail() {
    return Container(
      margin: EdgeInsets.all(8),
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text(this.carDetail.brandName + ", " + this.carDetail.description),
            subtitle: Text("Marka, Model"),
            trailing: Icon(Icons.local_taxi,color: Colors.grey,),
          ),
          ListTile(
            title: Text(this.carDetail.modelYear.toString() + ", " + this.carDetail.colorName),
            subtitle: Text("Model Yılı, Renk"),
            trailing: Icon(Icons.color_lens_outlined,color: Colors.grey,),
          ),
          ListTile(
            title: Text(this.carDetail.findexPoint.toString() + " FP, " + this.carDetail.dailyPrice.toString() + " ₺"),
            subtitle: Text("Findex Puanı, Günlük ücret"),
            trailing: Icon(Icons.money,color: Colors.grey,),
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
                      foregroundColor: MaterialStateProperty.all<Color>(
                          Colors.black87),
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
