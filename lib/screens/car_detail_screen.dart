import 'package:carousel_slider/carousel_slider.dart';
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

  Widget buildBody() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListView(
        children: [
          CarouselSlider.builder(
            itemCount: carDetail.carImages.length,
            itemBuilder: (context, index, realIdx) {
              var baseUrl = "https://10.0.2.2:5001/";
              var carImage = carDetail.carImages[index];
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
}
