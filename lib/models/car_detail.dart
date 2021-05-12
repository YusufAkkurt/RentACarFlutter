import 'package:rent_a_car/models/car_image.dart';

class CarDetail {
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

  CarDetail.empty();

  CarDetail(
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

  CarDetail.fromJson(Map json) {
    var list = json["carImages"] as List;
    print(list.toString());
    List<CarImage> carImagesList = list.map((carImage) => CarImage.fromJson(carImage)).toList();

    this.id = json["id"];
    this.brandId = json["brandId"];
    this.colorId = json["colorId"];

    this.brandName = json["brandName"];
    this.description = json["description"];
    this.colorName = json["colorName"];

    this.modelYear = json["modelYear"];
    this.dailyPrice = double.tryParse(json["dailyPrice"].toString());
    this.carImages = carImagesList;
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
