import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rent_a_car/models/car_image.dart';

class CarImageSliderWidget extends StatelessWidget {
  var carImages = <CarImage>[];

  CarImageSliderWidget(this.carImages);

  @override
  Widget build(BuildContext context) {
    return buildCarImageSlider();
  }

  Widget buildCarImageSlider() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListView(
        children: [
          CarouselSlider.builder(
            itemCount: this.carImages.length,
            itemBuilder: (context, index, realIdx) {
              var baseUrl = "https://10.0.2.2:5001/";
              var carImage = this.carImages[index];
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
