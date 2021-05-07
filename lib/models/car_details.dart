import 'package:rent_a_car/models/car_image.dart';

class CarDetails{
  int id;
  int brandId;
  int colorId;
  String brandName;
  String description;
  String colorName;
  int modelYear;
  double dailyPrice;
  List<CarImage> carImages;
  int findexPoint;


  CarDetails(
      this.id,
      this.brandId,
      this.colorId,
      this.brandName,
      this.description,
      this.colorName,
      this.modelYear,
      this.dailyPrice,
      this.carImages,
      this.findexPoint);

  CarDetails.fromJson(Map json) {
    this.id = json["id"];
    this.brandId = json["brandId"];
    this.colorId = json["colorId"];

    this.brandName = json["brandName"];
    this.description = json["description"];
    this.colorName = json["colorName"];

    this.modelYear = json["modelYear"];
    this.dailyPrice = double.tryParse(json["dailyPrice"].toString());
    this.carImages = json["carImage"];
    this.findexPoint = json["findexPoint"];
  }

  Map toJson() {
    Map carJsonFormat = {
      "id": this.id,
      "brandId": this.brandId,
      "colorId": this.colorId,
      "modelYear": this.modelYear,
      "dailyPrice": this.dailyPrice,
      "description": this.description,
      "findexPoint": this.findexPoint,
    };

    return carJsonFormat;
  }
}